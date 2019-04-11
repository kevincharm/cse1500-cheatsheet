# Request Methods

Don't get tricked, remember these names! Some trick names they might use are `UPDATE` instead of `PUT` or `REMOVE` instead of `DELETE`. BE CAREFUL!!!

You should always think of requests as `<method> <path>`. These always go together. Example:
* `GET /users/42`
* `POST /register`
* `PUT /settings`

## `GET`
A GET request can not contain a body (you can't send some JSON with it) so it should only be used to retrieve data. HOWEVER! You can still send data in the query string. So technically a GET request can do everything the other methods can.

## `HEAD`
A subset of `GET`. The request looks the same, but in the *response*, you only get the headers back, with no response body.

## `POST`
Should be used for sending data to the server, because you can attach things to the request body: JSON, a file, etc.

## `PUT` & `PATCH`
Should be used for updating data. You can attach stuff to the request body.

## `DELETE`
Should be used for deleting data. You can attach stuff to the request body.