#!/bin/bash

file_name=$1
file_path=$2
full_path="$file_path/$file_name"
if [ -z "$file_name" ] || [ -z "$file_path" ]; then
	echo "Usage: ./extract_backup.sh <file name> <file path>"
  exit 1

else
  if [ ! -f "$full_path" ]; then
    echo "File does not exists"
    exit 1

  else
    if [ -d "./restored" ]; then
      tar -xzf "$full_path" -C ./restored
      echo "File has been succesffully restored"
    
    else
      mkdir -p ./restored
      tar -xzf "$full_path" -C ./restored
      echo "File has been successfully restored in ~/restored"
    fi
  fi
fi

  
