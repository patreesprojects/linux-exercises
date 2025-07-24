<<<<<<< HEAD
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
=======
#!/bin/bash
services=("ssh" "networking" "ufw")
active=""
inactive=""
for service in "${services[@]}"; do

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
>>>>>>> d5da8039ca9257930f6bd3c8225a4c50f0134215
