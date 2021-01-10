# bangla-fonts-fix-linux
**Fix small Bangla fonts problem in linux**  

This will fix small or unsupported bangla font problem in linux. This will make "Nirmala UI" default bangla font in linux. Nirmala UI is a truetype font made by Microsoft. 
And It renders Bangla font beautifully. Nirmala UI is the default bangla font in Windows 10.

1. copy all fonts from Windows 10 iso or system into "/usr/share/fonts/win10-fonts" folder. Take a look at here how to extract fonts from Windows: https://wiki.archlinux.org/index.php/Microsoft_fonts#Extracting_fonts_from_a_Windows_ISO  
or download from this repo https://github.com/tazihad/win10-fonts

2. put "50-custom-bangla.conf" file into ".config/fontconfig/conf.d/" directory. [create if directory doesn't exist]  
```
wget https://raw.githubusercontent.com/tazihad/bangla-fonts-fix-linux/main/50-custom-bangla.conf && mkdir -p ~/.config/fontconfig/conf.d && cp 50-custom-bangla.conf $_
```

Test:  
`$ fc-cache`  
`$ LANG=bd_BD fc-match`  

TESTED: Pop!_OS, Manjaro  

**Extra steps for Forefox users:**  
Go to: Preference -> Language & Appearence -> Fonts & Colors  
From Advanced -> Fonts for -> Select Bengali  
Set->  
Proportional: Serif, Size -> 16  
Serif: Nirmala UI, Sans-serif: Nirmala UI  
Monospace: Consolas, Size: 12  
Minimum font size: None  

Click Ok.  
  

Again Select Latin  
Set-> 
Proportional: Serif, Size -> 16  
Serif: Times New Roman, Sans-serif: Arial  
Monospace: Consolas, Size: 12  
Minimum font size: None  
Click Ok.
  
Now Select the default font: Times New Roman  
