@echo off
call "%~sdp0\--_font_sample.cmd" "--font-file" "%~s1" "--other-font-file" "%~s2" "--output-file" "%~1__compared_to__%~nx2.pdf"
exit /b %ErrorLevel%
