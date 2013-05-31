{wordlist} = require './wordlist.json'

module.exports = (l) ->
  words = (wordlist[Math.floor(Math.random()*wordlist.length)] for i in [1..l])
  return words.join(' ')

module.exports.wordlist = wordlist
