# URL

## Anatomy of a URL

```
<protocol>://<hostname>:<port>/<path>?<query_params>
```

### `<protocol>` *required*
* `http`
* `https`
* `ftp` (probably don't need to know this one, also heaps more)
### `<hostname>` *required*
* `localhost`
* `google.com`
* `tudelft.nl`
* `cse1500.sendcroissants.me`
* `really.long.and.nested.subdomains.co.uk`
### `<port>` *optional*
* `80` (this is the **default** port when no port is specified)
* `3000`
* `5000`
* ...and any other integer from `0` to `65535`
### `<path>` *optional*
* `login`
* `calendar/january/31`
* ...it's a path. You know what a path is.
### `<query_params>` *optional*
`key=value` pairs separated by **&**, comes after the **?**.
Usually used for sending data in a GET request since GET requests can't send content in the body.
* `username=kevin`
* `username=kevin&token=fdfa8e7cc4b3`
    * this is basically like sending this in the body:
        ```json
        {
            "username":"kevin",
            "token":"fdfa8e7cc4b3"
        }
        ```

## Examples

```sh
# Ordinary URL, note the <port> is missing, so it defaults to 80
https://google.com

# Pointing to computer's own address, note the port is specified as 3000
# Also note it has a query string with some data.
http://localhost:3000/register?username=kevin&password=yeet
```

