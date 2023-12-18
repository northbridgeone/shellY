#!/bin/bash
# This script lists the top 10 processes by memory usage.

echo "Top 10 processes by memory usage:"
echo "------------------------------------"
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 11
