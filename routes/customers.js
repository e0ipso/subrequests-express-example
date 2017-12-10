const express = require('express');
const connection = require('../db');

const router = express.Router();

router.param('id', (req, res, next, id) => {
  req.id = id;
  next();
});

router.route('/customer')
  // rest api to get all customers
  .get((req, res) => {
    connection.query('select * from `customer`', (error, results, fields) => {
      if (error) {
        throw error;
      }
      res.end(JSON.stringify(results));
    });
  })
  // rest api to create a new customer record into mysql database
  .post((req, res) => {
    const params = req.body;
    console.log(params);
    connection.query('INSERT INTO customer SET ?', params, (error, results, fields) => {
      if (error) {
        throw error;
      }
      res.end(JSON.stringify(results));
    });
  });

router.route('/customer/:id')
  // rest api to get a single customer data
  .get((req, res) => {
    connection.query('select * from `customer` where Id=?', [req.id], (error, results, fields) => {
      if (error) {
        throw error;
      }
      res.end(JSON.stringify(results));
    });
  })
  // rest api to update record into mysql database
  .put((req, res) => {
    connection.query(
      'UPDATE `customer` SET `Name`=?,`Address`=?,`Country`=?,`Phone`=? where `Id`=?',
      [req.body.Name, req.body.Address, req.body.Country, req.body.Phone, req.id],
      (error, results, fields) => {
        if (error) {
          throw error;
        }
        res.end(JSON.stringify(results));
      }
    );
  })
  // rest api to delete record from mysql database
  .delete((req, res) => {
    connection.query('DELETE FROM `customer` WHERE `Id`=?', [req.id], (error, results, fields) => {
      if (error) {
        throw error;
      }
      res.end('Record has been deleted!');
    });
  });

module.exports = router;
