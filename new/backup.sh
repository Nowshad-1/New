#!/bin/bash
# Source directory to be backed up
source_dir="/root"
# Backup directory where the backup will be stored
backup_dir="/root/nowshad"
# Create a timestamp for the backup file name
timestamp=$(date +%Y%m%d%H%M%S)
# Create the backup file name
backup_file="${backup_dir}/backup_${timestamp}.tar.gz"
# Create the backup using tar
tar -czf "$backup_file" "$source_dir"
# Check if the backup was successful
if [ $? -eq 0 ]; then
  echo "Backup created successfully: $backup_file"
else
  echo "Backup failed!"
fi
