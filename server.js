
const express = require('express')
const app = express()
const port = 5000

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/healthcheck', (req, res) => {
  res.status(200).send('Application Healthy')
})

app.get('/automatic', (req, res) => {
  res.status(200).send('Deployed version 1.0.30')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})