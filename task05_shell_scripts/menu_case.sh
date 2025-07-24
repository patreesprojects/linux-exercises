#!/bin/bash

# Simple case menu example

echo "1) Create directory"
echo "2) Remove directory"
echo "3) Exit"

read option

case $option in
 1)
        echo "Enter directory name to create:"
        read dirname
        mkdir "$dirname"
        echo "Created directory: $dirname"
        ;;
 2)
        echo "Enter directory name to remove:"
        read dirname
        rm -r "$dirname"
        echo "Removed directory: $dirname"
        ;;
 3)
        echo "Goodbye!"
        ;;
 *)
        echo "Invalid option, please try again"
        ;;
esac
