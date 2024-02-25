const express = require("express");
const ejs = require("ejs");

const app = express();

// Set view engine
app.set("view engine", "ejs");

// Middleware for serving static files
app.use(express.static("public"));

// Routes
app.get("/", (req, res) => {
  res.render("index");
});

module.exports = app;

// const express = require("express");
// const mysql = require("mysql");
// const ejs = require("ejs");
// const fs = require("fs");
// require("dotenv").config();

// const app = express();
// const port = process.env.PORT || 1337;

// // Connect YourMySQL connection details
// const connection = mysql.createConnection({
//   host: process.env.DB_HOST,
//   user: process.env.DB_USER,
//   password: process.env.DB_PASSWORD,
//   database: "car_rental_database",
//   ssl: {
//     // Provide Your SSL options
//     ca: fs.readFileSync("./DigiCertGlobalRootCA.crt.pem"),
//   },
// });
// var del = connection._protocol._delegateError;
// connection._protocol._delegateError = function (err, sequence) {
//   if (err.fatal) {
//     console.trace("fatal error: " + err.message);
//   }
//   return del.call(this, err, sequence);
// };

// // Connect to MySQL
// connection.connect((err) => {
//   if (err) {
//     console.error("Error connecting to MySQL:", err);
//     return;
//   }
//   console.log("Connected to MySQL");
// });

// // Set view engine
// app.set("view engine", "ejs");

// // Middleware for serving static files
// app.use(express.static("public"));

// // Routes
// app.get("/", (req, res) => {
//   // connection.query("SELECT * FROM customer", (err, results) => {
//   //   if (err) {
//   //     console.error("Error querying MySQL:", err);
//   //     return;
//   //   }
//   // Render HTML template with data
//   res.render("index");
// });
// // });
// module.exports = app;

// // // Start server
// // app.listen(port, () => {
// //   console.log(`Server running at http://localhost:${port}`);
// // });
