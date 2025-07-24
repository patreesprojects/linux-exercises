#!/bin/bash

filename=$1
text=$2

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: ./write_with_args.sh <file_name> \"text to save\""
  exit 1
fi

echo "$text" > "$filename"
echo "File '$filename' created with text: $text"

