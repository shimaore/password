###
(c) 2010 Stephane Alnet
Released under the AGPL3 license
###

fs = require 'fs'

wordlist_file = require.resolve './wordlist.json'
wordlist = JSON.parse(fs.readFileSync(wordlist_file, 'utf8'))

module.exports = (l) ->
  words = (wordlist.words[Math.floor(Math.random()*wordlist.words.length)] for i in [1..l])
  return words.join(' ')

