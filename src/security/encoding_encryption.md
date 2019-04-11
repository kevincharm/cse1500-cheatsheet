# Encoding vs Encryption

```
¡MUY IMPORTANTE!
```
Encoding is **NOT** the same as encryption. Don't get tricked!!!

*Encryption* **DOES** provide security.

*Encoding* **DOES NOT** provide security.
```
¡MUY IMPORTANTE!
```

## Encoding

When you encode something, it is possible to decode it back easily. For example, you may encode some text containing Chinese characters into Base64 so that it can be sent over HTTP. This can then be decoded back on the other end easily. Therefore, it provides **no** security!

## Encryption

When you encrypt something, it is either impossible to decrypt it or you will require a key to decrypt it.

Example 1: Passwords are usually encrypted with an algorithm like bcrypt, which means it cannot be decrypted back.

Example 2: When using HTTPS, data is encrypted before being sent. There is a public key and a private key. The private key is used to encrypt the data, then the public key can be used to decrypt the data.
