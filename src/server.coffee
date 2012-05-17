require('node.vert.x')

connect = require('connect')
sharejs = require('share').server


server = connect()

server.use connect.static("#{__dirname}/../example")

#server.use '/', (req, res, next) ->
#  docName = require('hat')()
#  # TODO - implement writeHead
#  #res.putHeader 303, location: '/w/#' + docName
#  res.statusCode = 303
#  res.putAllHeaders location: '/w/#' + docName
#  res.end()

sharejs.attach server, {db: {type: 'none'}}

server.listen(8080, 'localhost')

