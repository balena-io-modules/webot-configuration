try
	{ Robot } = require 'hubot'
catch
	prequire = require 'parent-require'
	{ Robot } = prequire 'hubot'
express = require 'express'
app = express()
router = express.Router()

router.get '/', (request, response) ->
	output = {
		from: process.env.HUBOT_DUPLICATE_FROM
		to: process.env.HUBOT_DUPLICATE_TO
		rooms: process.env.HUBOT_DUPLICATE_ROOMS
		creds: [
			{ name: 'sqweelygig', match: /^sqweelygig$/, token: 'a...f' }
		]
	}
	response.send JSON.stringify output

app.use '/', router

app.listen process.env.PORT
