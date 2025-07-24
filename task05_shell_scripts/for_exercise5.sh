#!/bin/bash
#remove directories if they already exist
for i in {1..5}
do
    rm -rf dir$i
done

#create directories and files
for i in {1..5}
do
    mkdir dir$i
    echo "created dir$i with a file inside"
    echo "In dir$i there is file.txt: dir$i" > dir$i/file.txt
done
