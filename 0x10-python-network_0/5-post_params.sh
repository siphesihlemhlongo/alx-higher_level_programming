#!/bin/bash

# Check if the URL is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Set the parameters for the POST request
email="test@gmail.com"
subject="I will always be here for PLD"

#Use curl to send a POST request to the specified URL
#with the required parameters and display the body of the response
response=$(curl -s -X POST -d "email=$email&subject=$subject" "$1")

echo "$response"
