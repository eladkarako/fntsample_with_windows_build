<h3><img width="48" src="resources/icon.png" /> <code>fntsample</code> builds for Windows</h3>



<a href="https://paypal.me/%65%31%61%64%6B%61%72%61%6B%30/%35%55%53%44" title="show your support">♥</a>  


download the whole thing (no releases):  
https://github.com/eladkarako/fntsample_with_windows_build/archive/refs/heads/master.zip  

if you run `.cmd` files, edit them the first time using Notepad++ and make sure the END-OF-LINE is set to Windows EOL (`\r\n`), and save the files. github sometimes mess it up.  

<br/>

how to use?  

three examples are provided, for the most common tasks.  
you can run them from command-line, or drag-drop-files over them.  

`fntsample__example1__font_report_to_pdf__(drag-and-drop_multiple_files).cmd`  
will take any amount of fonts and will generate a pdf for each, one by one.  
given `myfont.ttf` you'll get `myfont.ttf.pdf` in the same folder as `myfont.ttf` .  

`fntsample__example2__font_report_to_svg__(drag-and-drop_multiple_files).cmd`  
will do the same, generating svg file instead of pdf,  
those svg reports not working as nicely as pdf,  
especially in older fonts.  

`fntsample__example3__compare_two_fonts_report_to_pdf__(drag-and-drop_just_two_files).cmd`  
will take just two arguments (you can drag just two files over it),  
at first it will ask you if you wish to change the order of the files,  
(by default `N` will use the current order of files, while `Y`/`y` will switch the order)  
then it will generate a pdf report.  
given `C:\path1\font1.ttf` and `C:\path2\font2.otf` you'll get  
`C:\path1\font1.ttf_compared_to_font2.otf.pdf` (note it will stored in `C:\path1\`).  

<hr/>

note:  

don't launch `fntsample.exe` directly,  
use `fntsample.cmd` instead.  
it allows the program to run properly under Windows,  
and recognise `C:\Windows\Fonts\`,  
as long as process long paths and files with Unicode characters.  

<hr/>

there are other switches for `fntsample` such as  
`--font-index`, `--other-index`, `--postscript-output`,  
`--print-outline`, `--write-outline`, `--no-embed`,  
`--include-range`, `--exclude-range`, and `--style`  
you can read about it in https://github.com/eugmes/fntsample  

<hr/>

note:  

the first time I've used it (before I've normalized all the quirks),  
the PDF titles were broken.  
normally you can fix it by providing alternative font and style using the `--style` argument.  
`--style "header-font: Arial 14"`  

I just made the default style and fonts working again  
by allowing it to recognise `C:\Windows\Fonts\` propertly.

<hr/>

<hr/>

note (developers):  

the build includes libs and cygwin dependencies,  
as well as a embedded manifest, version info, and icon.  

version was set to `2021.7.9.0` to matches https://github.com/eugmes/fntsample/commit/812bafa7e0f36c658e1da96e0faba09d1a4b129b (pretty much https://github.com/eugmes/fntsample/releases/tag/release%2F5.4)

see `resources/README_build_and_old_notes.md` for more information on how to build it yourself,  
as well the fixes that were included. the file names might have changed a bit though..


<hr/>

`examples` folder has some fonts and PDF and SVG reports, sample output.

<hr/>







