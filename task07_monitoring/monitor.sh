#!/bin/bash

# monitor.sh – prosty skrypt do sprawdzania stanu systemu

echo "======================"
echo "     SYSTEM MONITOR"
echo "======================"
echo ""

# CPU usage – pokazuje procentowe użycie procesora
echo ">>> CPU USAGE:"
top -b -n1 | grep "Cpu(s)"
echo ""

# Memory usage – pokazuje ile RAMu jest używane i ile jest wolne
echo ">>> MEMORY USAGE:"
free -h
echo ""

# Disk usage – pokazuje zajętość dysków (partycji)
echo ">>> DISK USAGE:"
df -h
echo ""

# Running processes – pokazuje ile procesów aktualnie działa
echo ">>> NUMBER OF RUNNING PROCESSES:"
ps aux | wc -l
echo ""

# Current date and time – aktualna data i czas systemowy
echo ">>> DATE & TIME:"
date
echo ""

# Optional: Uptime – jak długo system działa bez restartu
echo ">>> SYSTEM UPTIME:"
uptime
echo ""

# Optional: Who is logged in
echo ">>> LOGGED IN USERS:"
who
echo ""

echo "======================"
echo "     END OF REPORT"
echo "======================"
