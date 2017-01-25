express = require 'express'
app = express()

app.configure ->
	app.set 'port', 80

app.get '/', (request, response) ->
	response.send 'Hello World!'

app.listen app.get('port'), ->
	console.log 'done'
