http = require "http"
url = require "url"
start = ->
  onRequest = (request, response) -> 
    pathname = url.parse(request.url).pathname
    console.log "Request Received for  " + pathname
    response.end "Hello World"
  server = http.createServer onRequest
  server.listen 8888
  console.log "Server has started"
exports.start = start


