#!/bin/bash

if (( $# % 2 != 0 )); then
  echo "Usage: ./multi_backup.sh <folder_name> <folder_path> <folder_name2> <folder_path2> ..."
  exit 1
fi

done_properly=""
errors=""

while (( "$#" )); do
  folder=$1
  path=$2
  
  if [ ! -d "$path" ]; then
    echo "Destination path $path does not exist"
    errors+="$folder "
    continue
    fi

  if [ ! -d "$folder" ]; then
    echo "$folder doesn't exist or wasn't entered properly"
    errors+="$folder "

  else
    archive_name="${folder}_$(date +%d_%m_%y_%H_%M_%S).tar.gz"
    tar -czf "$path/$archive_name" "$folder"
    echo "Backup for $folder has been created at $path/$archive_name"
    done_properly+="$folder "

  fi

  shift 2

done

echo ""
echo "✅ Backed up: $done_properly"
echo "❌ Skipped: $errors"
