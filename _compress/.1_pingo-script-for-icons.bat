mkdir pingo_backup
xcopy *.* /EXCLUDE:_exclude.txt pingo_backup
pingo -s9 "%cd%\*.png"
pause