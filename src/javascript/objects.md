# Objects

## Accessing properties

```js
var person1 = {
    name: 'Kevin',
    age: 69,
    background: {
        nationality: 'Australian'
    }
}

// These are valid ways to access these objects' properties:

// The standard dot-notation
var name = person1.name
var age = person1.age
var nationality = person1.background.nationality


// Bracket notation
var name = person1['name']
// This is usually what it's used for:
var AGE_PROPERTY = 'age'
var age = person1[AGE_PROPERTY]

// A mix of both:
var nationality = person1['background'].nationality
```
