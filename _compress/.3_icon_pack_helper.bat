@echo off
title Icon Pack Helper for aegis-icons
cd ..
for /f "skip=1 tokens=1-6" %%g in ('wmic path win32_localtime get day^,hour^,minute^,month^,second^,year /format:table') do (
  if "%%~l"=="" goto s1_done
  set _yyyy=%%l
  set _mm=00%%j
  set _dd=00%%g
)
:s1_done
set _mm=%_mm:~-2%
set _dd=%_dd:~-2%
set version=%_yyyy%%_mm%%_dd%
echo.
echo ---------------------------------
echo ------- ICON PACK HELPER --------
echo ---------------------------------
:loop
echo.
echo [1] Generate JSON
echo [2] Edit JSONs on Notepad++
echo [3] Dry run-ish (generate ^& move icon pack ZIP to trash bin)
echo [4] Make the icon pack ZIP
echo [5] Make pack ZIP with manually added version
echo [6] Exit
echo.
choice /c 123456 /n /m "Choose (1-6): "
echo.

if errorlevel 6 goto exitScript
if errorlevel 5 goto makeSVGzipDiffVer
if errorlevel 4 goto makeSVGzip
if errorlevel 3 goto dryRunish
if errorlevel 2 goto editJsons
if errorlevel 1 goto generateJson

:generateJson
echo - - - - - - - - - - - - - - - - -
echo.
make-pack.py gen-def
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
for /f "skip=1 tokens=1-6" %%g in ('wmic path win32_localtime get day^,hour^,minute^,month^,second^,year /format:table') do (
if "%%~l"=="" goto s2_done
  set _hour=00%%h
  set _minute=00%%i
)
:s2_done
set _hour=%_hour:~-2%
set _minute=%_minute:~-2%
set _second=%time:~-5,2%
set dryFileName=aegis-icons_-_dryrun_[%_yyyy%-%_mm%-%_dd%_%_hour%.%_minute%.%_second%].zip
make-pack.py gen --output %dryFileName% --version %version%
:: NirCmd has to be in the folder that's added to the PATH <https://www.nirsoft.net/utils/nircmd.html>
nircmd moverecyclebin %dryFileName%
set icons_dir="%cd%\icons"
for /f %%a in ('2^>nul dir "%icons_dir%" /a-d/b/-o/-p/s^|find /v /c ""') do set icons_dir_amount=%%a
echo.
echo In "icons" folder:  %icons_dir_amount% icons
>nul find ": null," pack.json && (
  echo.
  echo [!] WARNING: null strings found from pack.json!
  goto null-check-completed
) || (
  goto null-check-completed
)
:null-check-completed
echo.
echo ---------------------------------
goto loop

:makeSVGzip
echo - - - - - - - - - - - - - - - - -
echo.
make-pack.py gen --output aegis-icons.zip --version %version%
echo.
echo ---------------------------------
goto loop

:makeSVGzipDiffVer
echo - - - - - - - - - - - - - - - - -
echo.
echo Add version number
set /p customver="(format: YYYYMMDD): "
echo.
make-pack.py gen --output aegis-icons_v%customver%.zip --version %customver%
echo.
echo ---------------------------------
goto loop

:exitScript
exit