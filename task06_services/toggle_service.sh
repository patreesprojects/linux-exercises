#!/bin/bash

service=$1

if [ -z "$1" ]; then
    echo "Usage: $0 <service-name>"
    exit 1
fi

if systemctl is-active "$service" &> /dev/null; then
	systemctl stop "$service"
	echo "Service: $service stopped"

else
	systemctl start "$service"
	echo "Service $service started"
fi

