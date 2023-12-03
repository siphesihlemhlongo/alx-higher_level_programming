#!/bin/bash

# Check if the URL is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Use curl to send an OPTIONS request to the specified URL
# and display the Allow header containing the accepted methods
allowed_methods=$(curl -s -I -X OPTIONS "$1" | grep -i "Allow" | awk '{print $2}')

#Display the allowed HTTP methods
echo "$allowed_methods"
