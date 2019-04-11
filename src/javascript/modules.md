# Modules

This is a common trick question that appears in the exams.

## Exporting a plain object

```js
// Exporting a plain object.
// Any code that `requires` this will share the same object.
module.exports = {
    name: 'Kevin',
    age: 42
}
```

```js
// Also valid, equivalent to above
module.exports.name = 'Kevin'
module.exports.age = 42
```

## Exporting a function that returns an object

```js
// Exporting a function that returns an object
// Any code that `requires` and calls this will
// get a NEW object every time.
module.exports = function () {
    return {
        name: 'Kevin',
        age: 42
    }
}

// Also watch out with this one, you need to require it like this:
var foo1 = require('foo')()
console.log(foo1.name) // prints 'Kevin'

// This is NOT valid and will return a function instead of an object
var foo2 = require('foo')
console.log(foo2.name) // undefined!
```
