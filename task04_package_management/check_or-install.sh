#!/bin/bash

package=$1

#checking if user entered the command properly
if [ -z "$package" ]; then
    echo "Usage: $0 <package-name>"
    exit 1
fi

if dnf list installed "$package" &> /dev/null; then
	echo "$package is already installed"

else
	echo "Installing $package..."
	sudo dnf install -y "$package"
fi

dnf info "$package"
