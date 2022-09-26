@echo off
::---------------------------------------------------------
:: run this instead of the fntsample.exe directly.
:: it includes fixes that allows using C:\Windows\Fonts\
:: as well as fixing Windows paths.
::---------------------------------------------------------

chcp 65001 1>nul 2>nul

::---------------------------------------------------- 'FONTCONFIG_PATH'
set "FONTCONFIG_PATH=fonts"
set "FONTCONFIG_PATH=%~sdp0bin\%FONTCONFIG_PATH%"
set "FONTCONFIG_PATH=%FONTCONFIG_PATH:\=/%"
set "FONTCONFIG_PATH=%FONTCONFIG_PATH::/=/%"
set "FONTCONFIG_PATH=/cygdrive/%FONTCONFIG_PATH%"

::---------------------------------------------------- debug (optional)
::echo [INFO] FONTCONFIG_PATH: %FONTCONFIG_PATH% 1>&2

::---------------------------------------------------- normalize MUI to English UTF-8.
set "LANG=en_US.UTF-8"
set "LANGUAGE=en_US"
set "LC_CTYPE=en_US.UTF-8"
set "LC_NUMERIC=en_US.UTF-8"
set "LC_TIME=en_US.UTF-8"
set "LC_COLLATE=en_US.UTF-8"
set "LC_MONETARY=en_US.UTF-8"
set "LC_MESSAGES=en_US.UTF-8"
set "LC_PAPER=en_US.UTF-8"
set "LC_NAME=en_US.UTF-8"
set "LC_ADDRESS=en_US.UTF-8"
set "LC_TELEPHONE=en_US.UTF-8"
set "LC_MEASUREMENT=en_US.UTF-8"
set "LC_IDENTIFICATION=en_US.UTF-8"
set "LC_ALL=en_US.UTF-8"
set "TZ=UTC"


::---------------------------------------------------- https://unicode.org/Public/UNIDATA/Blocks.txt
set "BLOCKS_FILE=%~sdp0bin\Blocks.txt"
set "BLOCKS_FILE=%BLOCKS_FILE:\=/%"
set "BLOCKS_FILE=%BLOCKS_FILE::/=/%"
set "BLOCKS_FILE=/cygdrive/%BLOCKS_FILE%"

call "%~sdp0bin\fntsample.exe" "--blocks-file" "%~sdp0bin\Blocks.txt" %*
set "EXIT_CODE=%ErrorLevel%"

exit /b %EXIT_CODE%


