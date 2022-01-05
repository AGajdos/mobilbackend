const express = require('express')
var cors = require('cors')
const app = express()
const port = 3000

app.use(express.static('kepek'))
app.use(cors())
app.use(express.json())

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/izomcsoport', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'
    })
    
    connection.connect()
    
    connection.query('SELECT * from izomcsoport', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)

      res.send(rows)
    })
    
    
    connection.end()    

  })
  
  app.get('/gyakorlatok', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'
    })
    
    connection.connect()
    
    connection.query('SELECT * from gyakorlatok ', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)

      res.send(rows)
    })
    
    
    connection.end()    

  })
 
  app.get('/gyakorlatok_mell', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'
    })
    
    connection.connect()
    
    connection.query('SELECT * from gyakorlatok WHERE izom_gyakorlat_id=1', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)

      res.send(rows)
    })
    
    
    connection.end()    

  })

  app.get('/gyakorlatok_hat', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'
    })
    
    connection.connect()
    
    connection.query('SELECT * from gyakorlatok WHERE izom_gyakorlat_id=2', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)

      res.send(rows)
    })
    
    
    connection.end()    

  })

  app.get('/gyakorlatok_vall', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'
    })
    
    connection.connect()
    
    connection.query('SELECT * from gyakorlatok WHERE izom_gyakorlat_id=3', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)

      res.send(rows)
    })
    
    
    connection.end()    

  })

  app.get('/gyakorlatok_tricepsz', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'
    })
    
    connection.connect()
    
    connection.query('SELECT * from gyakorlatok WHERE izom_gyakorlat_id=5', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)

      res.send(rows)
    })
    
    
    connection.end()    

  })

  app.get('/kereses', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodolgozat'
    })
    
    connection.connect()
    
    connection.query('SELECT * from gyakorlatok  ', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)

      res.send(rows)
    })
    
    
    connection.end()    

  })
app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})