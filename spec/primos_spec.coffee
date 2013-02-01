
Primos = require('../lib/primos')
require 'jasmine-node'

describe 'calcula Numeros Primos', ->

  it 'should take 2 and receive [2]', ->
    expect(Primos.calcula_primos(2)).toEqual([2])

  it 'should take 3 and receive [2,3]', ->
    expect(Primos.calcula_primos(3)).toEqual([2, 3])

  it 'should take 5 and receive [2,3,5]', ->
    expect(Primos.calcula_primos(5)).toEqual([2, 3, 5])

  it 'should take 7 and receive [2,3,5,7]', ->
    expect(Primos.calcula_primos(5)).toEqual([2, 3, 5])

  it 'should take a list with value and expectations', ->
    ary =
    [[11, [2, 3, 5, 7, 11]]
    ,[13, [2, 3, 5, 7, 11, 13]]
    ,[17, [2, 3, 5, 7, 11, 13, 17]]
    ,[31, [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31]]
    ,[79, [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79]]
    ,[101, [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101]]]

    for aryTeste in ary
      expect(Primos.calcula_primos(aryTeste[0])).toEqual(aryTeste[1])
