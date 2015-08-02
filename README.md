# EPICHashing

EPICHashing is a category extension on String and NSData, written in swift, that provides convenience methods for creating persistable and constant hashes usign the framework's CommonCrypto libraries. 

#### Usage:
```swift
//for strings:
let string = "Helloworld!"
let hash = string.hashUsingAlgorithm(HashAlgorithm.MD5)

//for NSData:
let data = string.dataUsingEncoding(NSUTF8StringEncoding)
let hash = data.hashUsingAlgorithm(HashAlgorithm.MD5)
```

Valid hash algorithms
------
The following hash algorithms are supported:
- MD2
- MD4
- MD5
- SHA1
- SHA224
- SHA256
- SHA384
- SHA512

This class serves as an extension to the tutorial of the blog article: ["TODO"](TODO).
Usage is free for all based on the attached license details, if you find this code useful, please consider [making a donation](http://epic-apps.uk/donations/). :)

Copyright (c) EPIC 
[www.epic-apps.uk](www.epic-apps.uk)



