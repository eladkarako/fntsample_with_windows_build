@echo off
call "%~sdp0\--_font_sample.cmd" "--font-file" "%~s1" "--output-file" "%~1.pdf"
exit /b %ErrorLevel%
