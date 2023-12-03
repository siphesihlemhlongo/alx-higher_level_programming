#!/bin/bash

# Check if the URL is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Use curl to send a DELETE request to the specified URL
# and display the body of the response
response=$(curl -s -X DELETE "$1")

#Display the body of the response
echo "$response"
