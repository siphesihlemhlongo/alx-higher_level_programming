#!/usr/bin/python3
import urllib.request
import sys

if len(sys.argv) != 2:
    print("Usage: python script.py <URL>")
    sys.exit(1)

url = sys.argv[1]

try:
    with urllib.request.urlopen(url) as response:
        header_value = response.getheader('X-Request-Id')

        if header_value is not None:
            print(header_value)
        else:
            print("None")

except urllib.error.HTTPError as e:
    print("Error code:", e.code)
except urllib.error.URLError as e:
    print("Failed to reach the server. Reason:", e.reason)
