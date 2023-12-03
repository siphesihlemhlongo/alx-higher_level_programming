#!/bin/bash

# Check if the URL is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Use curl to send an OPTIONS request to the specified
#URL and display the Allow header
allowed_methods=$(curl -s -I -X OPTIONS "$1" | grep -i "Allow" | awk '{print $2}')

echo "$allowed_methods"
