#!/bin/bash

# Check if the URL is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Use curl to send a request to the specified
#URL and display the size of the body in bytes
size=$(curl -sI "$1" | grep -i "content-length"
| awk '{print $2}' | tr -d '\r\n')

echo "$size"
