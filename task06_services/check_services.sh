#!/bin/bash

for service in "$@"; do
	echo "Checking: $service"
	systemctl is-active "$service"
	systemctl is-enabled "$service"
	echo ""
done
