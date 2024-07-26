#!/bin/bash

# Function to get the operating system
get_os() {
  echo "$(uname -o)"
}

# Function to get the kernel version
get_kernel() {
  echo "$(uname -r)"
}

# Function to get the uptime
get_uptime() {
  echo "$(uptime -p)"
}

# Function to get the number of packages installed
get_packages() {
  if command -v dpkg &> /dev/null; then
    echo "$(dpkg --list | wc -l)"
  elif command -v rpm &> /dev/null; then
    echo "$(rpm -qa | wc -l)"
  else
    echo "Unknown"
  fi
}

# Function to get the shell
get_shell() {
  echo "$SHELL"
}

# Function to get the screen resolution
get_resolution() {
  echo "$(xrandr | grep '*+' | awk '{print $1}')"
}

# Function to get current IP
get_ip() {
  echo "$(curl -s icanhazip.com)"
}

# Main function to display the information
display_info() {
  echo " Operating System: $(get_os)"
  echo " Kernel Version: $(get_kernel)"
  echo " Uptime: $(get_uptime)"
  echo " Packages: $(get_packages)"
  echo " Shell: $(get_shell)"
  echo " Resolution: $(get_resolution)"
  echo " Public IP: $(get_ip)"
}

# Call the main function
display_info
