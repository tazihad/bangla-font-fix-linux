# bangla-fonts-fix-linux
**Fix small Bangla fonts problem in linux**  
### Install Bangla fonts
```
curl -sSL https://raw.githubusercontent.com/tazihad/bangla-font-fix-linux/main/fonts-bangla-download.sh | sh
```

### Make Nirmala UI default Bangla font similar to Windows 10
```
curl -sSL https://raw.githubusercontent.com/tazihad/bangla-font-fix-linux/main/bangla-nirmalaui-default.sh | sh
```

### Download Windows 10 fonts for linux
```
curl -sSL https://raw.githubusercontent.com/tazihad/bangla-font-fix-linux/main/msfonts-download.sh | sh
```

#### Extra Steps for Firefox Users

Follow these steps to configure fonts for Bengali and Latin text in Firefox:

1. **Open Firefox Settings:**
   - Navigate to `Settings`.

2. **Navigate to Fonts & Colors:**
   - Go to `Language & Appearance` -> `Fonts & Colors`.
   - Click on the `Advanced...` button.

3. **Configure Bengali Fonts:**
   - **Fonts for:** Select `Bengali`.
   - **Proportional:** Set to `Serif`, Size to `16`.
   - **Serif:** Set to `Nirmala UI`.
   - **Sans-serif:** Set to `Nirmala UI`.
   - **Monospace:** Set to `Consolas`, Size to `12`.
   - **Minimum font size:** Leave as `None`.

   - Click `OK` to save.

4. **Configure Latin Fonts:**
   - **Fonts for:** Select `Latin`.
   - **Proportional:** Set to `Serif`, Size to `16`.
   - **Serif:** Set to `Times New Roman`.
   - **Sans-serif:** Set to `Arial`.
   - **Monospace:** Set to `Consolas`, Size to `12`.
   - **Minimum font size:** Leave as `None`.

   - Click `OK` to save.

5. **Set Default Font:**
   - Ensure the default font is set to `Times New Roman`.

This setup ensures that Bengali text is displayed correctly with the desired fonts and sizes in Firefox.



### Extra
Download and Install 30+ Bangla fonts
https://github.com/tazihad/bangla-fonts
