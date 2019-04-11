# Attack Vectors

## CSRF (Cross-site Request Forgery)

CSRF is when a [malicious](https://www.merriam-webster.com/dictionary/malicious) site uses your ***authenticated session*** to inject data to the server using your account. They key to remembering this is the word [*Forgery*](https://www.merriam-webster.com/dictionary/forgery); like when you *forged* your mum's signature in high school so you could skip school and hang out in the city.

### How to prevent CSRF attacks on your server/app
* Make sure your sessions expire.
* Reauthenticate your users often.
    * Example 1: ask them to login again from time to time
    * Example 2: add a [CAPTCHA](https://en.wikipedia.org/wiki/CAPTCHA)

## XSS (Cross-site Scripting)

XSS is also when a malicious site injects data to your server, but does **not** need authenticated sessions. (So no *forging* required)

### How to prevent XSS attacks on your server/app
* Make sure your inputs are escaped.
    Don't construct strings straight from HTML forms into SQL statements.
    So DON'T write:
    ```js
    var query = "select * from user where user.id = ' + req.params.id + '"
    ```
    Instead, use prepared statements like:
    ```js
    var query =
        sql.preparedStatement('select * from user where user.id = ?', req.params.id)
    ```

## Indirect Secure Object Reference

This is, for example, when you are able to manipulate a URL to get access to another user's settings page with sensitive information.

For example:
1. Your user settings page is at `http://tudelft.nl/users/42/settings`
1. Then you try changing the URL to `http://tudelft.nl/users/69/settings`
1. Surprisingly, you are able to see some other person's settings page and see their personal details such as home address, phone number, etc.
1. This is **indirect** because there is no link that lets you do this, but you have to play around with the URL.
1. This is supposed to be a **secure object** because it contains sensitive information like home address.
1. The **reference** to this object is the user id (42 and 69).

### How to prevent Indirect Secure Object Reference access
* Protect your routes with authentication.
* Don't use sequential numbers as IDs. For example, you could use a UUID that looks like `123e4567-e89b-12d3-a456-426655440000`, which is random and unguessable.

## Bonus: CSRF vs XSS

[Quora: What is the difference between XSS and CSRF from their execution perspective?](https://www.quora.com/What-is-the-difference-between-XSS-and-CSRF-from-their-execution-perspective)
