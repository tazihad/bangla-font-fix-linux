#!/bin/bash
# -----------------------------------------------------------------------------
# Script Name:    bangla-nirmalaui-default.sh
# Description:    Makes Nirmala UI default font for Bangla similar to Windows 10 for clean UI
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
CONFIG_URL="https://raw.githubusercontent.com/tazihad/bangla-font-fix-linux/main/50-bangla-nirmalaui-default.conf"
CONFIG_FILE="50-bangla-nirmalaui-default.conf"
DEST_DIR="$HOME/.config/fontconfig/conf.d"

# Download the fontconfig file
echo "Downloading fontconfig file from $CONFIG_URL..."
curl -sL "$CONFIG_URL" -o "$CONFIG_FILE"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Copy the downloaded file to the destination directory
echo "Copying $CONFIG_FILE to $DEST_DIR..."
mv "$CONFIG_FILE" "$DEST_DIR/"

# Refresh font cache (output hidden)
echo "Refreshing font cache..."
fc-cache -fv > /dev/null 2>&1

# Check the font configuration for Bangla locale
echo "Checking font configuration for Bangla locale..."
export LANG=bn_BD.UTF-8
fc-match

echo "Installed config in $DEST_DIR"
echo "Nirmala UI is now default font for Bangla."
