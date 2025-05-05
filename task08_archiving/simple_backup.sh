#!/bin/bash

#directory you want to backup

source_folder=$1
destination_folder=$2

if [ -z "$source_folder" ] || [ -z "$destination_folder" ]; then
  echo "Usage: $0 <source-folder> <destination-folder>"
  exit 1
fi


mkdir -p "$destination_folder"
date=$(date +%Y-%m-%d_%H-%M-%S)
archive_name="$(basename "$source_folder")_$date.tar.gz"
tar -czf "$destination_folder/$archive_name" "$source_folder"

echo "Backup saved to: $destination_folder/$archive_name"
