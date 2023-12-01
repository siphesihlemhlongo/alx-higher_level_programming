#!/usr/bin/python3
import requests
import sys

if len(sys.argv) != 3:
    print("Usage: python script.py <username> <token>")
    sys.exit(1)

username = sys.argv[1]
token = sys.argv[2]
url = 'https://api.github.com/user'

# Set up the authentication headers
auth = (username, token)

try:
    response = requests.get(url, auth=auth)
    data = response.json()

    if 'id' in data:
        print(data['id'])
    else:
        print("None")

except ValueError:
    print("Not a valid JSON")
