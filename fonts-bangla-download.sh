#!/bin/bash
# -----------------------------------------------------------------------------
# Script Name:    your_script_name.sh
# Description:    Brief description of what the script does.
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
URL="https://github.com/tazihad/bangla-fonts/releases/download/0.2/fonts-bangla.tar.gz"
DEST_DIR="$HOME/.local/share/fonts"
TMP_DIR="$(mktemp -d)"

# Function to clean up temporary directory on exit
cleanup() {
    rm -rf "$TMP_DIR"
}
trap cleanup EXIT

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Download the file
echo "Downloading fonts from $URL..."
curl -L -o "$TMP_DIR/fonts-bangla.tar.gz" "$URL"

# Extract the tarball
echo "Extracting fonts to $DEST_DIR..."
tar -xzvf "$TMP_DIR/fonts-bangla.tar.gz" -C "$DEST_DIR" > /dev/null 2>&1

# Refresh font cache (output hidden)
echo "Refreshing font cache..."
fc-cache -fv > /dev/null 2>&1

echo "Bangla Fonts installed successfully in ~/.local/share/fonts/fonts-bangla."


