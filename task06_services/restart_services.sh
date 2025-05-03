#!/bin/bash

services=$@

if [ "$#" -eq 0 ]; then
   echo "Usage: ./restart_services <service_name1> <service_name2>..."
   exit 1
fi      

for service in "$@"; do
  echo "=============================="
  echo "Checking service: $service"
  echo "=============================="

  if systemctl is-active "$service"; then
     systemctl restart "$service"
     echo "Service: $service has been restarted"
  else
     systemctl start "$service"
     echo "Service: $service has been started"
  fi   

  echo ""
done
