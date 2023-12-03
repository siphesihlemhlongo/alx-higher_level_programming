#!/bin/bash

# Check if the URL is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

#The script takes URL as an argument,sends a request
#using curl,and displays size of the body in bytes.
size=$(curl -sI "$1" | grep -i "content-length"
| awk '{print $2}' | tr -d '\r\n')

#Display the size of body in bytes
echo "$size"
