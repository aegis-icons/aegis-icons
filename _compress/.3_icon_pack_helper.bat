@echo off
title Icon Pack Helper for aegis-icons
cd ..
setlocal EnableDelayedExpansion
for /f "skip=1 tokens=1-6" %%a in ('wmic path win32_localtime get day^,hour^,minute^,month^,second^,year /format:table') do (
    if "%%b" neq "" (
        set /a version=%%f*10000+%%d*100+%%a
    )
)
echo.
echo ---------------------------------
echo ------- ICON PACK HELPER --------
echo ---------------------------------
:loop
echo.
echo [1] Generate JSON
echo [2] Edit JSONs on Notepad++
echo [3] Dry run-ish (generate ^& delete icon pack ZIP)
echo [4] Make the icon pack ZIP (JSON has to generated first)
echo [5] Make pack ZIP with manually added version
echo [6] Zip the PNG files
echo [7] Exit
echo.
choice /c 1234567 /n /m "Choose (1-6): "
echo.

if errorlevel 7 goto exitScript
if errorlevel 6 goto zipPNGs
if errorlevel 5 goto makeSVGzipDiffVer
if errorlevel 4 goto makeSVGzip
if errorlevel 3 goto dryRunish
if errorlevel 2 goto editJsons
if errorlevel 1 goto generateJson

:generateJson
echo - - - - - - - - - - - - - - - - -
echo.
pack.py gen-def
echo.
echo ---------------------------------
goto loop

:editJsons
echo - - - - - - - - - - - - - - - - -
echo.
:: 32-bit version of Notepad++ has to be installed
echo Opening "pack_TEMPLATE.json" ^& "pack.json" files to Notepad++ (new session for compare plugin) ...
start "" /b "%ProgramFiles(x86)%\Notepad++\notepad++.exe" -multiInst -nosession "%cd%\pack_TEMPLATE.json" "%cd%\pack.json"
echo.
echo ---------------------------------
goto loop

:dryRunish
echo - - - - - - - - - - - - - - - - -
echo.
pack.py gen --output aegis-icons.zip --version %version%
del aegis-icons.zip
echo.
echo ---------------------------------
goto loop

:makeSVGzip
echo - - - - - - - - - - - - - - - - -
echo.
pack.py gen --output aegis-icons.zip --version %version%
echo.
echo ---------------------------------
goto loop

:zipPNGs
echo - - - - - - - - - - - - - - - - -
:: line-break by 7-Zip CMD
7za a -tzip "%cd%\aegis-icons_PNGs_legacy.zip" "%cd%\PNG\*"
:: Files that has to be in the folder that's added to the PATH:
::   7za.dll, 7za.exe, 7zxa.dll
:: These files can be downloaded from 7-Zip Extra <https://www.7-zip.org/download.html>
echo.
echo ---------------------------------
goto loop

:makeSVGzipDiffVer
echo - - - - - - - - - - - - - - - - -
echo.
echo Add version number
set /p customver="(format: YYYYMMDD): "
echo.
pack.py gen --output aegis-icons_v%customver%.zip --version %customver%
echo.
echo ---------------------------------
goto loop

:exitScript
exit