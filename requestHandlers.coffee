exec =  require("child_process").exec
exports.start = start = ->
  console.log "Request handler 'start' was called"
  content = "empty"
  exec("ls -lah", (error, stdout, stderr) ->
    content = stdout
  )
  return content
exports.upload = upload = ->
  console.log "Request handler 'upload was called"
  return "Hello Upload"
