#!/bin/bash

# Prompt the user for the directory to back up
read -p "Enter the directory to back up: " backup_dir

# Prompt the user for the backup filename
read -p "Enter the backup filename: " backup_filename

# Check if the backup directory exists, if not create it
if [ ! -d "$backup_dir" ]; then
  mkdir -p "$backup_dir"
fi

# Perform the backup and compress the result
tar -czf "$backup_dir/$backup_filename" "$backup_dir"
