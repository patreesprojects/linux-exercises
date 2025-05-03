#!/bin/bash

action=$1
service=$2

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <action> <service>"
  exit 1

else
  systemctl $action $service
fi

