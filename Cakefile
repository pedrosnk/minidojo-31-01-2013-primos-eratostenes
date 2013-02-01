{spawn, exec} = require 'child_process'

task 'test', 'Test the dojo code', ->
  jasmine = spawn "node", ["node_modules/jasmine-node/lib/jasmine-node/cli.js", "--coffee","--verbose" ,"spec"]
  jasmine.stdout.on "data", (data) ->
    process.stdout.write data

  jasmine.stderr.on "data", (data) ->
    process.stderr.write data

  jasmine.stdin.end()
