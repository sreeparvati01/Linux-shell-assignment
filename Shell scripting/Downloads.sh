#!/bin/bash
# Purpose : Automatically download a file using wget or curl
# Name  : Sree Parvati 
# Date    : 15-11-2025

# URL of the file you want to download
URL="https://example.com/samplefile.zip"

# Folder where file will be saved
DOWNLOAD_DIR="/home/unitpt_sreeparvati01/downloads"

# Create folder if it does not exist
mkdir -p "$DOWNLOAD_DIR"

# Download the file using wget
wget "$URL" -P "$DOWNLOAD_DIR"

# Alternative using curl (uncomment if needed)
# curl -o "$DOWNLOAD_DIR/filename.zip" "$URL"

echo "Download completed! File saved in $DOWNLOAD_DIR"