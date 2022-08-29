@echo off
call "%~sdp0\--_font_sample.cmd" "--font-file" "%~s1" "--svg" "--output-file" "%~1.svg"
exit /b %ErrorLevel%
