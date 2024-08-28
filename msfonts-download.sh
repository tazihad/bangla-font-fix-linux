#!/bin/bash
# -----------------------------------------------------------------------------
# Script Name:    msfonts-download.sh
# Description:    Downloads all Windows 10 fonts in Linux local user directory
# Author:         @tazihad
# Website:        https://zihad.com.bd
# License:        MIT License
# -----------------------------------------------------------------------------

# MIT License
#
# Copyright (c) 2024 @tazihad
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Define variables
REPO_URL="https://github.com/tazihad/win10-fonts/archive/refs/heads/main.zip"
DEST_DIR="$HOME/.local/share/fonts/msfonts"
ZIP_FILE="$HOME/win10-fonts.zip"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Download the repository as a zip file
echo "Downloading win10-fonts repository. Full Size 187M..."
curl -L "$REPO_URL" -o "$ZIP_FILE"

# Extract the zip file
echo "Extracting fonts..."
unzip -q "$ZIP_FILE" -d "$HOME"

# Move fonts to the destination directory
echo "Moving fonts to $DEST_DIR..."
mv "$HOME/win10-fonts-main"/* "$DEST_DIR"

# Cleanup
rm "$ZIP_FILE"
rm -rf "$HOME/win10-fonts-main"

# Refresh font cache (output hidden)
echo "Refreshing font cache..."
fc-cache -fv > /dev/null 2>&1

echo "Fonts installed successfully in $DEST_DIR for $USER."



