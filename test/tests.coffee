password = require '..'

should = require 'should'

describe 'Password', ->
  it 'should return a string when called with a number', ->
    password(0).should.be.type 'string'
    password(1).should.be.type 'string'
    password(2).should.be.type 'string'
    password(3).should.be.type 'string'
    password(4).should.be.type 'string'
    password(67).should.be.type 'string'
  it 'should return an empty password when called with 0', ->
    password(0).should.equal ''
  it 'should return a one-word password when called with 1', ->
    password(1).should.not.containEql ' '
  it 'should return two words when called with 2', ->
    password(2).should.match /^\S+\s\S+$/
