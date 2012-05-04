http = require "http"
url = require "url"
start = (route, handle) ->
  onRequest = (request, response) -> 
    pathname = url.parse(request.url).pathname
    console.log "Request Received for  " + pathname
    route handle, pathname, response
  server = http.createServer onRequest
  server.listen 8888
  console.log "Server has started"
exports.start = start


