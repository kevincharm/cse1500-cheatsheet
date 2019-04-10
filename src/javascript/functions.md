# Functions

Functions can be declared in 2 different ways.

## Function Declaration

* Function declarations are [**hoisted**](https://www.merriam-webster.com/dictionary/hoist).
    * Hoisted means that it is "pulled up" to the top of the current scope.
    * This means you can call it before it's declared.

```js
sayHello('Kevin') // this works!

function sayHello(name) {
    console.log('Hello, ' + name)
}
```

## Function Expression

* Function expressions are functions which are assigned to a variable.
* They are **NOT** hoisted.
    * This means you can not call it before it is declared.

```js
sayHello('Kevin') // this will throw an error!

var sayHello = function (name) {
    console.log('Hello' + name)
}
```
