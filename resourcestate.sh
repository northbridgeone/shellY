#!/bin/bash
# This script displays system resource usage.

echo "System resource usage:"
echo "-----------------------"
echo "CPU usage: $(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')"
echo "Memory usage: $(free -m | awk 'NR==2{printf "%.2f%%", $3/$2 * 100}')"
echo "Swap usage: $(free -m | awk 'NR==3{printf "%.2f%%", $3/$2 * 100}')"
