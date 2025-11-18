#!/bin/bash
# Project: Backup a directory
# Name : Sree Parvati 
# Date    : 15-11-2025

# Directory you want to back up
SOURCE_DIR="/home/unipt_sreeparvati01/myfolder"

# Backup folder where backups will be stored
BACKUP_DIR="/home/unipt_sreeparvati01/backups"

# Create timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Create backup file name
BACKUP_NAME="backup_${TIMESTAMP}"

# Create backup folder if it does not exist
mkdir -p "$BACKUP_DIR"

# Copy the source directory to backup folder with timestamp
cp -r "$SOURCE_DIR" "$BACKUP_DIR/$BACKUP_NAME"

echo "Backup complete! Saved as $BACKUP_DIR/$BACKUP_NAME"
