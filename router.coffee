route = (handle, pathname, response) ->
  console.log "About to route a request for" + pathname
  if typeof handle[pathname] is "function"
    handle[pathname](response)
  else
    console.log "No request handler found for " + pathname
    response.end "404 Not Found"
exports.route = route
