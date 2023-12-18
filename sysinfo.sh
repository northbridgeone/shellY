#!/bin/bash
# This script prints basic server information.

echo "Hostname: $(hostname)"
echo "OS: $(uname -o)"
echo "Kernel version: $(uname -r)"
echo "Uptime: $(uptime)"
echo "Load averages: $(uptime | awk -F'load average: ' '{print $2}')"
