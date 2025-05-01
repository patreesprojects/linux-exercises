#!/bin/bash

package="htop"

# Check if installed
if dnf list installed "$package" &> /dev/null; then
  echo "$package is already installed."
else
  echo "$package not installed. Installing..."
  sudo dnf install -y "$package"
fi

# Update
echo "Updating $package..."
sudo dnf update -y "$package"

# Info
echo "Info about $package:"
dnf info "$package"

# Optional: Remove
# echo "Removing $package..."
# sudo dnf remove -y "$package"

