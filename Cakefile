{spawn, exec} = require 'child_process'

NODE_MODULES = "#{__dirname}/node_modules"

task 'build', 'Build the .js files', (options) ->
	exec "coffee --compile --bare --output lib/ src/", (err, stdout, stderr) ->
		throw err if err
		console.log stdout + stderr

task 'watch', 'Watch and build the .js files', ->
    spawn 'coffee', ['-o','lib/','-cbw','src'], customFds: [0..2]

task 'vert.x', 'Run vert.x', ->
    spawn "vertx", ['run', 'lib/server.js', '-cp', "#{NODE_MODULES}/node.vert.x"], {customFds: [0..2]}
