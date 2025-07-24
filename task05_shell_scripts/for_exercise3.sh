#!/bin/bash

# create text files in a loop
#touch file1.txt file2.txt file3.txt

# example of creating files with a loop
for i in {1..5}
do
    touch file$i.txt
done

# loop to print all text files in the current directory
for file in *.txt
do
    echo "Text file: $file"
done

