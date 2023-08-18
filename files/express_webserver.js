const config = require('./webserver_config.json')
const express = require('express')
const http = require('http')

const app = express()
const server = http.createServer(app)

app.get('*', (req, res) => {
    console.info(req.path)
    res.send('Hello World')
})

server.listen(config.PORT || 8080, console.info(`Server listening on port: ${config.PORT || 8080}`))