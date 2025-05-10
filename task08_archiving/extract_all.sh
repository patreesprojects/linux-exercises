#!/bin/bash

target_dir=$1

if [ -z "$target_dir" ]; then
  echo "Usage: ./extract_all.sh <directory>"
  exit 1
fi

if [ -d "$target_dir" ]; then
  extracted=0
  skipped=0

  for archive in *.tar.gz; do
    archive_name=${archive}_$(date +%y_%m_%d_%H_%M_%S)
    
    if [ ! -d "$target_dir/$archive_name" ]; then
      mkdir -p "$target_dir/$archive_name"
      tar -xzf "$archive" -C "$target_dir/$archive_name"
      ((extracted++))
    else
      echo "Folder $target_dir/$archive_name already exists..."
      ((skipped++))
    fi

  done
fi

echo ""
echo "=== SUMMARY ==="
echo "Extracted: $extracted"
echo "Skipped: $skipped"

