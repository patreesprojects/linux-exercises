#!/bin/bash

echo ""
echo "1) Create file"
echo "2) Delete file"
echo "3) Exit"
echo ""

echo "Choose an option:"
read choice

echo ""

case $choice in

1)
        echo "Enter file name:"
        read filename
        touch "$filename.txt"
        echo "$filename.txt created"
	;;
2)
        echo "Which file do you want to remove:"
        read filename2
        rm "$filename2.txt"
        echo "$filename2.txt removed"
	;;
3)
        echo "Goodbye!"
	;;
*)
        echo "Invalid option, try again"
	;;
esac
