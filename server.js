
const express = require('express')
const app = express()
const port = 5000

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/healthcheck', (req, res) => {
  res.status(200).send('Application Healthy')
})

app.get('/version', (req, res) => {
  res.status(200).send('Deployed version 1.0.0')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})