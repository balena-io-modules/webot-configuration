express = require 'express'
app = module.exports = express()

app.get '/', (request, response) ->
	response.send 'Hello World!'

app.listen 80, console.log 'done'
