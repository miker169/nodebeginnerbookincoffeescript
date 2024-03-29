queryString = require "querystring"
exports.start = start =(response, postData) ->
  console.log "Request handler 'start' was called"
  body = """
          <html>
            <head>
              <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
            </head>
            <body>
              <form action="/upload" method="post">
                <textarea name="text" rows="20" cols="60"></textarea>
                <input type="submit" value="Submit Text" />
              </form>
            </body>
          </html>
  """
  response.writeHead 200, {"Content-Type": "text/html"}
  response.write body
  response.end

exports.upload = upload = (response, postData) ->
  console.log "Request handler 'upload was called"
  response.writeHead 200, {"Content-Type": "text/plain"}
  response.write "You've sent the text: " + queryString.parse(postData).text
  response.end
