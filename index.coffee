try
	{ Robot } = require 'hubot'
catch
	prequire = require 'parent-require'
	{ Robot } = prequire 'hubot'
express = require 'express'
app = express()
router = express.Router()

router.get '/', (request, response) ->
	response.send process.env.HUBOT_DUPLICATE_FROM

app.use '/', router

app.listen process.env.PORT
