:: MAKE SURE YOU
:: CREATED (svg_input)
:: FOLDER AND ADDED
:: SVGS THERE

svgo --multipass --pretty --indent 3 -f "%cd%\(svg_input)" -o "%cd%"

:: In case when SVGO fails, open CMD.exe to this directory and execute:
::   call .0_svgo_prettify-svg.bat
:: This shows the errors, when just using BAT normally doesn't