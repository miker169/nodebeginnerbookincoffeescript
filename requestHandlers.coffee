exec =  require("child_process").exec
exports.start = start =(response) ->
  console.log "Request handler 'start' was called"
  exec("ls -lah", (error, stdout, stderr) ->
    response.end stdout
  )
exports.upload = upload =(response) ->
  console.log "Request handler 'upload was called"
  response.end "Hello Upload"
