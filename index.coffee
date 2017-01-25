express = require 'express'
app = express()

app.get '/', (request, response) ->
	response.send 'Hello World!'

app.listen 80
