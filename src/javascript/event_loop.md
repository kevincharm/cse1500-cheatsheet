# Event Loop

## Asynchronous, Synchronous, Blocking, Non-blocking

### Synchronous
* Synchronous -> blocking.
    * Events will be executed one after the other, sequentially, in order.

Example with synchronous version of the `readFile` function:
```js
// Here, the program waits until the file is read.
// Then the contents of the file are assigned to the `contents` variable.
var contents = fs.readFileSync("file.txt")

// This will now print the contents of the file:
console.log(contents)
```

### Asynchronous
* Asynchronous -> non-blocking.
    * Events will happen in parallel, and the order is not guaranteed.
    * Accepts *callback* functions that get called when the event is finished.

Example with asynchronous version of the `readFile` function:
```js
var contents

// Here, the program does NOT wait until the file is read.
// Note how `readFile` accepts a callback.
fs.readFile("file.txt", function (err, fileContents) {
    // This function is run AFTER the file reading is done, some time in the future.
    // We don't know when.
    contents = fileContents
})

// At this point, the file reading is not done yet, so contents will still be empty!
console.log(contents)
```
The order in which the operations happen in this script are as follows:
1. Line 30: `fs.readFile`
2. Line 37: `console.log`
3. Line 33: `contents = fileContents`
