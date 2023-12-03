#!/bin/bash

# Check if the URL is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Use curl to send a GET request to the specified
#URL and display the body of the response
#if the status is 200
curl -s -o /dev/null -w "%{http_code}" "$1" | grep -q "200" && curl -s "$1"
