# bangla-fonts-fix-linux
Fix small Bangla fonts problem in linux

This will fix small or unsupported bangla font problem in linux. This will make "Nirmala UI" default bangla font in linux. Nirmala UI is a truetype font made by Microsoft. 
And It renders Bangla font beautifully.

1. copy all fonts from Windows 10 iso or system into "/usr/share/fonts/win10-fonts" folder. Take a look at here how to extract fonts from Windows: https://wiki.archlinux.org/index.php/Microsoft_fonts#Extracting_fonts_from_a_Windows_ISO  
or download from this repo https://github.com/tazihad/win10-fonts

2. put "50-custom-bangla.conf" file into ".config/fontconfig/conf.d/" directory. [create if directory doesn't exist]  
`$ mkdir -p ~/.config/fontconfig/conf.d && cp 50-custom-bangla.conf $_`
