#!/bin/bash

service=$1

if [ -z "$service" ]; then
  echo "Usage: /check_service_status.sh <service>"
  exit 1
fi

echo "$service"

if systemctl is-active "$service" --quiet; then
  echo "$service is active"

else
  echo "$service is not active"
fi

if systemctl is-enabled "$service" --quiet; then
  echo "$service is enabled on boot"

else
  echo "$service is not enabled on boot"
fi
