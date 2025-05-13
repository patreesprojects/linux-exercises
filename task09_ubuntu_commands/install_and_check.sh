#!/bin/bash

package=$1

if [ -z "$package" ]; then
  echo "Usage: ./install_and_check.sh <package>"
  exit 1
fi

if apt list --installed "$package" --quiet 2>/dev/null | grep -q "$package"; then
  echo "$package is already installed"

else
  echo "Installing $package..."
  sudo apt install -y "$package" --quiet
fi

apt list --installed "$package" 2>/dev/null
apt show "$package" 2>/dev/null

