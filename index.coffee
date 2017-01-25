express = require 'express'
app = module.exports = express.createServer()

app.get '/', (request, response) ->
	response.send 'Hello World!'

app.listen 80
