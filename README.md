# Subrequests Express Example

An example Express app that uses Subrequests.

## Set up MySQL
This app depends on a mysql database.

  1. Create a database named `test` in your MySQL server.
  1. Import the table structures from `tables.sql` in the database.
  1. Once the tables are created, then import the sample data from `dump.sql`.
  1. Edit `db.js` to add your MySQL username and password replacing the `root:root` section.

## Test the API
Make the following requests to understand the exposed API:

  * `[GET]` http://localhost:3002/customer
  * `[GET]` http://localhost:3002/user
  * `[POST]` http://localhost:3002/subrequests with body
  ```json
  [
    {
      "requestId": "customers",
      "action": "view",
      "uri": "/customer"
    },
    {
      "requestId": "users",
      "action": "view",
      "uri": "/user/{{customers.body@$.*.User_id}}",
      "waitFor": ["customers"]
    },
    {
      "requestId": "githubs",
      "action": "view",
      "uri": "https://api.github.com/users/{{users.body@$.*.Github_handle}}",
      "headers": { "User-Agent": "Subrequests" },
      "waitFor": ["users"]
    }
  ]
  ```
  * `[GET]` http://localhost:3002/subrequests?query=%5B%7B%22requestId%22%3A%22customers%22%2C%22action%22%3A%22view%22%2C%22uri%22%3A%22%2Fcustomer%22%7D%2C%7B%22requestId%22%3A%22users%22%2C%22action%22%3A%22view%22%2C%22uri%22%3A%22%2Fuser%2F%7B%7Bcustomers.body%40%24.%2A.User_id%7D%7D%22%2C%22waitFor%22%3A%5B%22customers%22%5D%7D%2C%7B%22requestId%22%3A%22githubs%22%2C%22action%22%3A%22view%22%2C%22uri%22%3A%22https%3A%2F%2Fapi.github.com%2Fusers%2F%7B%7Busers.body%40%24.%2A.Github_handle%7D%7D%22%2C%22headers%22%3A%7B%22User-Agent%22%3A%22Subrequests%22%7D%2C%22waitFor%22%3A%5B%22users%22%5D%7D%5D
