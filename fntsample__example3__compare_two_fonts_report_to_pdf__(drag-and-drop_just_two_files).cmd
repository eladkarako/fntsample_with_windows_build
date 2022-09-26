@echo off
::-----------------------------------------------------------------
:: generates report of two fonts to a PDF.
:: you can only drag-and-drop two files.
:: 
:: you'll be asked if you want to switch the order of the files
:: so don't worry about the ambigious nature of drag-and-drop
:: from Windows explorer..
::-----------------------------------------------------------------

chcp 65001 1>nul 2>nul

if ["%~1"] EQU [""] ( goto END )
if ["%~2"] EQU [""] ( goto END )

echo ------------------------------ 1>&2

set "FONT_FILE1=%~sf1"
set "FONT_FILE2=%~sf2"
set "OUTPUT_FILE=%~1__compared_to__%~nx2.pdf"
set "DESCRIPTION=[%~nx1 compared to %~nx2]"

echo [INFO] FIRST:  %~nx1  1>&2
echo [INFO] SECOND: %~nx2  1>&2
set /p "USER_RESPONSE=switch order? [N]"
if ["%USER_RESPONSE%"] EQU [""] ( 
  set "USER_RESPONSE=N"
) 

echo."%USER_RESPONSE%" | findstr /I /C:"N" 1>nul 2>nul
IF ["%ErrorLevel%"] EQU ["0"] ( goto CONTINUE ) 


echo [INFO] changing order... 1>&2
echo [INFO] FIRST:  %~nx2  1>&2
echo [INFO] SECOND: %~nx1  1>&2

set "FONT_FILE1=%~sf2"
set "FONT_FILE2=%~sf1"
set "OUTPUT_FILE=%~2__compared_to__%~nx1.pdf"
set "DESCRIPTION=[%~nx2 compared to %~nx1]"

::--------------------------------------------------------------

:CONTINUE

set "FONT_FILE1=%FONT_FILE1:\=/%"
set "FONT_FILE1=%FONT_FILE1::/=/%"
set "FONT_FILE1=/cygdrive/%FONT_FILE1%"

set "FONT_FILE2=%FONT_FILE2:\=/%"
set "FONT_FILE2=%FONT_FILE2::/=/%"
set "FONT_FILE2=/cygdrive/%FONT_FILE2%"

set "OUTPUT_FILE=%OUTPUT_FILE:\=/%"
set "OUTPUT_FILE=%OUTPUT_FILE::/=/%"
set "OUTPUT_FILE=/cygdrive/%OUTPUT_FILE%"

title %DESCRIPTION%
echo [INFO] %DESCRIPTION% ... 1>&2

call "fntsample.cmd"  "--font-file" "%FONT_FILE1%"  "--other-font-file" "%FONT_FILE2%"  "--output-file" "%OUTPUT_FILE%"
set "EXIT_CODE=%ErrorLevel%"

echo [INFO] EXIT_CODE: %EXIT_CODE%. 1>&2
echo ------------------------------ 1>&2
echo. 1>&2

echo. 1>&2
echo [INFO] Done. 1>&2
pause
popd
exit /b %EXIT_CODE%

