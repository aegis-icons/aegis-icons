:: ADD SVGs TO
:: THIS DIRECTORY
:: WHERE THIS BAT
:: FILE EXIST

@echo off
mkdir (svg_input)
robocopy "%cd%" "%cd%\(svg_input)" *.svg /move

svgo --multipass --pretty --indent 3 -f "%cd%\(svg_input)" -o "%cd%"

:: In case when SVGO fails, open CMD.exe to (svg_input) directory and execute:
::   svgo --multipass --pretty --indent 3 -f "%cd%" -o "%cd%\(debug)"
:: This shows the errors, when just using BAT normally doesn't