#!/bin/bash

# Check if the URL is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Use curl to send a GET request to the specified
#URL and display the body of the response
response=$(curl -s -o /dev/null -w "%{http_code}" "$1")

# Check if the response status code is 200
if [ "$response" -eq 200 ]; then
  body=$(curl -s "$1")
  echo "$body"
fi
