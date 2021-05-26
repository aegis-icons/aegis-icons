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
echo [2] Make the iconpack ZIP (JSON has to generated first)
echo [3] Zip the PNG files
echo [4] Exit
echo.
choice /c 1234 /n /m "Chosen input (1-4): "
echo.

if errorlevel 4 goto exitScript
if errorlevel 3 goto zipPNGs
if errorlevel 2 goto makeSVGzip
if errorlevel 1 goto generateJson

:generateJson
echo - - - - - - - - - - - - - - - - -
echo.
pack.py gen-def
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
:: line-break by 7za
7za a -tzip "%cd%\aegis-icons_PNGs_v%version%_legacy.zip" "%cd%\PNG\*"
echo.
echo ---------------------------------
goto loop

:exitScript
exit