const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const customers = require('./routes/customers');
const users = require('./routes/users');
const { subrequestsRouterFactory } = require('subrequests-express');

app.use((req, res, next) => {
  res.set('Content-Type', 'application/json');
  next();
});

// Subrequests expects the body to be a string. Make sure we add it before the
// body parser.
app.use(subrequestsRouterFactory('/subrequests'));

// start body-parser configuration
app.use(
  bodyParser.json(),
  // Support URL-encoded bodies
  bodyParser.urlencoded({
    extended: true
  })
);
// end body-parser configuration

// create app server
const server = app.listen(3002, "127.0.0.1", function () {
  const host = server.address().address;
  const port = server.address().port;

  console.log(`Example app listening at http://${host}:${port}`);
});

// Add imported routes.
app.use('/', customers);
app.use('/', users);
