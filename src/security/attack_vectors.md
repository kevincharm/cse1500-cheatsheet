# CSRF, XSS, etc

## CSRF (Cross-site Request Forgery)

CSRF is when a [malicious](https://www.merriam-webster.com/dictionary/malicious) site uses your ***authenticated session*** to inject data to the server using your account. They key to remembering this is the word [*Forgery*](https://www.merriam-webster.com/dictionary/forgery); like when you *forged* your mum's signature in high school so you could skip school and hang out in the city.

### How to prevent CSRF attacks on your server/app
* Make sure your sessions expire.
* Reauthenticate your users often.
    * Example 1: ask them to login again from time to time
    * Example 2: add a [CAPTCHA](https://en.wikipedia.org/wiki/CAPTCHA)

## XSS (Cross-site Scripting)

XSS is when a malicious site injects scripts to your server, but does **not** strictly need authenticated sessions.

Example: Users are able to post comments on the site. A malicious user posts a comment containing the following content:
```js
<script>alert('lol')</script>
```
Once posted, the server displays the comment as it is, *without sanitising it*. Now when other users see this comment, they will get a rude message box saying "lol".

### How to prevent XSS attacks on your server/app
* Make sure any user-inputted data is sanitised/escaped.
    * When displaying user-inputted data such as comments, always sanitise inputs before rendering them.
    * ELI5: Sanitising means making the code into a plain string so that it can't be executed by a browser.

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
