http = require "http"
url = require "url"
start = (route, handle) ->
  onRequest = (request, response) ->
    postData = ""
    pathname = url.parse(request.url).pathname
    console.log "Request Received for  " + pathname
    request.setEncoding "utf8"
    request.addListener "data", (postDataChunk) ->
      postData += postDataChunk
      console.log "Received POST data chunk " + postDataChunk + "'."

    request.addListener "end" , ->
      route handle, pathname, response,postData
      
  server = http.createServer onRequest
  server.listen 8888
  console.log "Server has started"
exports.start = start


