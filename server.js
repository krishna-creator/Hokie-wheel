const app = require("./app");
const mysql = require("mysql");
const fs = require("fs");
require("dotenv").config();

const port = process.env.PORT || 1337;

// Connect YourMySQL connection details
const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: "car_rental_database",
  ssl: {
    ca: fs.readFileSync("./DigiCertGlobalRootCA.crt.pem"),
  },
});

connection.connect((err) => {
  if (err) {
    console.error("Error connecting to MySQL:", err);
    return;
  }
  console.log("Connected to MySQL");
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
