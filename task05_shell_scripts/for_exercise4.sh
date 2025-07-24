#!/bin/bash

for file in *.txt
do
  if [[ "$file" == *1* ]]; then
    echo "File contains the digit 1: $file"
  else
    echo "File does NOT contain the digit 1: $file"
  fi
done

