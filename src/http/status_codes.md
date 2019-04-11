# Status Codes

Here I'll list the important ones you should know. For everything else: https://http.cat

## `200`
The 200s are success codes. It means your GET request was successful, or your POST request was successful and a new account was created, etc.
* `200 OK`
* `201 Created` - usually after a POST

## `300`
The 300s are all about redirection. It's still a success, just means that the resource has moved somewhere else.
* `301 Moved permanently`
* `302 Found` - usually a temporary redirect

## `400`
The 400s are about **bad requests**. Anything 400 or higher is an error.
* `400 Bad request`
* `401 Unauthorized` - usually when you aren't logged in or you haven't supplied some Authorization header
* `403 Forbidden` - you're logged in/authenticated, but you don't have access (maybe the route is only for admins)
* `404 Not found`

## `500`
The 500s are about server errors.
* `500 Internal server error` - some error occurred on the server.
