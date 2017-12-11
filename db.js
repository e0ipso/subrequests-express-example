const mysql = require('mysql');

// start MySQL connection
const connection = mysql.createConnection({
  host: 'localhost', // MySQL database host name
  user: 'root', // MySQL database user name
  password: 'root', // MySQL database password
  database: 'test' // MySQL database name
});
connection.connect(function (err) {
  if (err) {
    throw err
  }
  console.log('You are now connected with MySQL database...')
});
// end MySQL connection

module.exports = connection;
