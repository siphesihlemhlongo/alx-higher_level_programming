#!/usr/bin/python3
import urllib.request

url = 'https://alx-intranet.hbtn.io/status'

try:
    with urllib.request.urlopen(url) as response:
        body = response.read()
        body_str = body.decode('utf-8')

        print("- Body response:")
        print("\t- type:", type(body))
        print("\t- content:", body)
        print("\t- utf8 content:", body_str)

except urllib.error.HTTPError as e:
    print("Error code:", e.code)
except urllib.error.URLError as e:
    print("Failed to reach the server. Reason:", e.reason)
