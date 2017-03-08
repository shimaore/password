A memorable password generator for Node.js
==========================================

`password` is a simple server-side memorable password generator for Node.js

It is based on a list of 21,110 English words, thereby providing about 14 bits of randomness per word. A useful password will therefore require at least 3 words.

The module returns a function which can be called with the desired number of words.

    var password = require('password');
    console.log(password(4));

You can also access the list of words:

    var words = require('password').wordlist;
    console.log(words[352]);

[![Build Status](https://travis-ci.org/shimaore/password.svg?branch=master)](https://travis-ci.org/shimaore/password)
