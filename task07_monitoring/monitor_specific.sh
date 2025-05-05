#!/bin/bash

process_name=$1
mode=$2
logfile="log.txt"

if [ -z "$process_name" ] || [ -z "$mode" ]; then
  echo "Usage: $0 <process_name> <mode: refresh|log>"
  exit 1
fi

while true; do
  output=""
  usage=""
  pids=$(pgrep -x "$process_name")

  if [ -z "$pids" ]; then
    output="[$(date +%T)] $process_name is not running"
  else
    output="[$(date +%T)]"
    for pid in $pids; do
      usage=$(ps -p "$pid" -o %cpu,%mem --no-headers)
      output+=" PID $pid: $usage |"
    done
  fi

  if [ "$mode" == "refresh" ]; then
    clear
    echo "$output"
  elif [ "$mode" == "log" ]; then
    echo "$output" >> "$logfile"
  else
    echo "Invalid mode: $mode. Use 'refresh' or 'log'."
    exit 1
  fi

  sleep 2
done
