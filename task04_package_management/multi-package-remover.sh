#!/bin/bash

package=$@
removed=""
skipped=""

if [ "$#" -eq 0 ]; then
  echo "Usage: $0 <package1> [package2] [package3] ..."
  exit 1
fi

for package in "$@"; do
	
	if dnf list installed "$package" &> /dev/null; then
	 sudo dnf remove -y "$package"
	 removed+="$package "
	
	else 
	 echo "$package is not installed"
	 skipped+="$package "
	fi
done

echo ""
echo "=== Summary ==="
echo "Removed: $removed"
echo "Skipped (not installed): $skipped"

