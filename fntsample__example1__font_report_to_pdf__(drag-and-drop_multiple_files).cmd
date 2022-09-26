@echo off
::-----------------------------------------------------------
:: generates report of a font to a PDF.
:: you can drag-and-drop any amount of files you want.
::-----------------------------------------------------------

chcp 65001 1>nul 2>nul

:LOOP
  if ["%~1"] EQU [""] ( goto END )
  
  echo ------------------------------ 1>&2
  
  set "FONT_FILE=%~sf1"
  set "FONT_FILE=%FONT_FILE:\=/%"
  set "FONT_FILE=%FONT_FILE::/=/%"
  set "FONT_FILE=/cygdrive/%FONT_FILE%"
  
  set "OUTPUT_FILE=%~f1.pdf"
  set "OUTPUT_FILE=%OUTPUT_FILE:\=/%"
  set "OUTPUT_FILE=%OUTPUT_FILE::/=/%"
  set "OUTPUT_FILE=/cygdrive/%OUTPUT_FILE%"
  
  title [%~nx1 » %~nx1.pdf]
  echo [INFO] %~nx1 » %~nx1.pdf ... 1>&2

  call "fntsample.cmd"  "--font-file" "%FONT_FILE%"  "--output-file" "%OUTPUT_FILE%"
  set "EXIT_CODE=%ErrorLevel%"

  echo [INFO] EXIT_CODE: %EXIT_CODE%. 1>&2
  echo ------------------------------ 1>&2
  echo. 1>&2
  
  call "timeout.exe" /T 1 /NOBREAK 1>nul 2>nul
  goto NEXT


:NEXT
  shift
  goto LOOP


:END
  echo. 1>&2
  echo [INFO] Done. 1>&2
  pause
  popd
  exit /b %EXIT_CODE%
 
