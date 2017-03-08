{randomBytes} = require 'crypto'
{wordlist} = require './wordlist.json'

module.exports = (l) ->
  return '' if l < 1
  words = []
  while words.length < l
    random = randomBytes(2).readUInt16LE(0) & 0x7fff
    continue if random >= wordlist.length
    words.push wordlist[random]
  return words.join ' '

module.exports.wordlist = wordlist
