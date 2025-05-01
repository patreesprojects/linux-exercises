#!/bin/bash

package1=$1
package2=$2
package3=$3
# $@ means all arguments

echo "Checking if packages were entered properly"

#checking if packages were entered properly
if [ $@ -eq 0 ]; then
	echo "How to use: ./multi_package_tool.sh package1 package2 package3"
	exit 1
fi

#using for loop for every package to check if they are installed and if not
#installing them

echo "Checking if the packages weren't already installed"

for package in "$@"; do

 if dnf list installed "$package" &> /dev/null; then
  echo "$package is already installed."

 else
  echo "Installing $package..."
  sudo dnf install -y "$package" 
 fi

 dnf info "$package"

done


