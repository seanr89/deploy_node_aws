
const express = require('express')
const app = express()
const port = 5000

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/healthcheck', (req, res) => {
  res.status(200).send('Application Healthy')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})