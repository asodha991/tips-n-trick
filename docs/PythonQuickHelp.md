# Python Quick Help

### Sort a dict

```python
sorted(dict_name, key=lambda row: (row['dob'], row['salary'], row['height']), reverse=False)
```

where `dict_name` is name of the dictionary and sorting filter is applied on `dob`, then `salary`, then `height`

### Make api calls using passphrase for PEM file with Python SSLContext

```python
import requests
import ssl
from ssl import SSLContext
import http
import json

context = ssl.SSLContext(ssl.PROTOCOL_TLSv1_2)
context.load_cert_chain(certfile="<path to pem file containing private key>",password="******")
context.load_verify_locations(cafile="<path to ca certfile>")
context.verify_mode = ssl.CERT_REQUIRED
context.check_hostname = True
connection = http.client.HTTPSConnection("www.google.com",443,context=context)
connection.request("GET", "/api path/")  #e.g: connection.request("GET", "/applications/")
response = connection.getresponse()
data = response.read().decode('utf-8')
print(data)
json_obj = json.loads(data)
print(json_obj)
connection.close()
```

### Catch all Exceptions of a Module

Considering `requests` as module and if we want to catch all possible exception of this module with out using broader `except:`, please use below code snippet.

```python
# This will inspect and get all members of Exception class in request module
import inspect

# import the module which you want to use. Example: requests
import requests

# Get all requests exception class from requests which are subclass of Exception
exception_types = [obj for name, obj in inspect.getmembers(jsonschema.exceptions) if inspect.isclass(obj) and issubclass(obj, Exception)]

try:
    requests.get(url)
except Exception as e:
    if any(issubclass(e.__class__, lv) for lv in exception_types):
        print(str(e))
    else:
        print("Not an requests exceptions.")
        raise
```


### Fix [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed (ssl.c:726)

Please add below to bypass

```python
import ssl
ssl._create_default_https_context = ssl._create_unverified_context
```

or update `certifi`

* In Mac, to update certifi, run below commands `[Applicable if Python was installed using official package from python.org]`

```
/Applications/Python\ 3.6/Install\ Certificates.command
/Applications/Python\ 2.7/Install\ Certificates.command
```
