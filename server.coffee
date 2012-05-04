http = require "http"
start = ->
  onRequest = (request, response) -> 
    console.log "Request Received"
    response.end "Hello World"
  server = http.createServer onRequest
  server.listen 8888
  console.log "Server has started"
exports.start = start

