@echo off
cd ..
setlocal EnableDelayedExpansion
for /f "skip=1 tokens=1-6" %%a in ('wmic path win32_localtime get day^,hour^,minute^,month^,second^,year /format:table') do (
    if "%%b" neq "" (
        set /a version=%%f*10000+%%d*100+%%a
    )
)
echo.
echo ---------------------------------
echo ------- ICON PACK CREATOR -------
echo ---------------------------------
:loop
echo.
echo Choose:
echo [1] Generate JSON
echo [2] Edit JSONs on Notepad++
echo [3] Make the iconpack ZIP (JSON has to generated first)
echo [4] Zip the PNG files
echo [5] Exit
echo.
choice /c 12345 /n /m "Choose (1-5): "
echo.

if errorlevel 5 goto exitScript
if errorlevel 4 goto zipPNGs
if errorlevel 3 goto makeSVGzip
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

:makeSVGzip
echo - - - - - - - - - - - - - - - - -
echo.
pack.py gen --output aegis-icons_SVGs_v%version%.zip --version %version%
echo.
echo ---------------------------------
goto loop

:zipPNGs
echo - - - - - - - - - - - - - - - - -
:: line-break by 7-Zip CMD (has to be installed)
7za a -tzip "%cd%\aegis-icons_PNGs_v%version%_legacy.zip" "%cd%\PNG\*"
echo.
echo ---------------------------------
goto loop

:exitScript
exit