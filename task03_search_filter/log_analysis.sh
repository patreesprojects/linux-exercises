#!/bin/bash

#simple exercise on grep/sed/awk

cat << E0F > log_sample.txt
2024-05-01 08:00:00 INFO System started
2024-05-01 08:01:10 DEBUG Checking dependencies
2024-05-01 08:02:30 ERROR Could not start service
2024-05-01 08:03:40 INFO Initialization complete
2024-05-01 08:04:00 WARNING Low memory
E0F

echo "===INFO and ERROR logs ==="
grep -E 'INFO|ERROR' log_sample.txt

echo "=== Replace INFO for INFORMATION ==="
sed 's/INFO/INFORMATION/g' log_sample.txt

echo "=== Extract times ==="
awk '{print $2}' log_sample.txt
