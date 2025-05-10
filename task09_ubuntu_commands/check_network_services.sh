#!/bin/bash
services=("ssh" "networking" "ufw")
active=""
inactive=""
for service in $services; do

  if systemctl is-active --quiet  "$service"; then
    active+="$service "
  
  else
    inactive+="$service"
  
  fi

done

echo ""
echo "=== Summary ==="
echo "Active services: $active"
echo ""
echo "Inactive services: $inactive"
echo ""
