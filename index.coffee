express = require 'express'
app = express()
router = express.Router()

router.get '/', (request, response) ->
	response.send 'Hello World!'

app.use '/', router

app.listen 80
