# Express

## Middlewares

```js
var app = require('express')()

app.use(function (req, res, next) {
    console.log('first middleware!')

    // call the next middleware in the chain
    next()
})

app.use(function (req, res, next) {
    console.log('second middleware!')

    // call the next middleware in the chain
    next()
})

app.use(function (req, res, next) {
    console.log('third middleware!')

    // end the response
    res.end()
})
```
The code above illustrates a middleware chain.
* Middlewares are declared by passing a callback function into `app.use`
* Order of declaration of **middlewares** is important.

```js
var app = require('express')()

app.get('/action', function (req, res) {
    console.log('action route')
    res.end()
})

app.post('/user', function (req, res) {
    console.log('user route')
    res.end()
})

// Now the following middleware will be called before a request
// is routed to any of the routes above.
app.use(function (req, res, next) {
    console.log('first middleware!')

    // call the next middleware in the chain
    // in this case, it goes to either
    // - the GET /action handler, or
    // - the POST /user handler
    next()
})
```
