# Classes & Modules
```java
public class Person {
    private String name;
    private int age;

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public int getAge() {
        return this.age;
    }

    public void birthday() {
        this.age = this.age + 1;
    }
}

// Then this class can be instantiated with:
Person person = new Person("Kevin", 42);
// and you can invoke instance methods like:
person.birthday();
// and get the age like this:
int age = person.getAge();
```
*Above* is an example class in **Java**.

* We can't get access to `name` because it's private and has no getter!
    * Therefore we say that `name` is **encapsulated**.
* There are multiple ways to write this class in JavaScript. *Below* we go through some examples of how to write this equivalent class in JavaScript.

## Prototype Pattern
```js
// This is the constructor:
function Person(name, age) {
    this.name = name
    this.age = age
}

// These are *instance* methods;
// meaning they have access to `this` (itself).
Person.prototype.getAge = function () {
    return this.age
}

Person.prototype.birthday = function () {
    this.age = this.age + 1
}

// Then this "class" can be instantiated with:
var person = new Person('Kevin', 42)
// and you can invoke instance methods like:
person.birthday()

// and get the age like this:
var age = person.getAge()
// OR
var age = person.age

// ...and this is also works!
var name = person.name
```
* This is called the prototype pattern.
* It does **not** support encapsulation, because we are able to access any of its attributes, including `name`.

## Module Pattern
```js
function Person(name, age) {
    var name = name
    var age = age

    function getAge() {
        return age
    }

    function birthday() {
        age = age + 1
    }

    // Tricks to watch out for:
    // Usually, with the module pattern, we don't need to use `this` as in other patterns!

    // With the module pattern,
    // we _explicitly return_ what we want to expose (make public):
    return {
        getAge: getAge,
        birthday: birthday
    }
}

// We create the instance like so (notice the lack of `new`):
var person = Person('Kevin', 42)
// Then we can do
person.birthday()
// and
var age = person.getAge()
// but we cannot access name! So it's encapsulated :)
```
* This is called the module pattern (or a factory, but I don't think we use that name in this course).
* Allows encapsulation. (`name` is not accessible; so therefore it is "private")
