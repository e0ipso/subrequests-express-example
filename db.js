const mysql = require('mysql');

// start mysql connection
const connection = mysql.createConnection({
  host: 'localhost', // mysql database host name
  user: 'root', // mysql database user name
  password: 'root', // mysql database password
  database: 'test' // mysql database name
});
connection.connect(function (err) {
  if (err) {
    throw err
  }
  console.log('You are now connected with mysql database...')
});
// end mysql connection

module.exports = connection;
