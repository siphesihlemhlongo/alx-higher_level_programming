#!/usr/bin/python3
import requests
import sys

if len(sys.argv) != 2:
    print("Usage: python script.py <URL>")
    sys.exit(1)

url = sys.argv[1]

response = requests.get(url)

x_request_id = response.headers.get('X-Request-Id')

if x_request_id is not None:
    print(x_request_id)
else:
    print("None")
