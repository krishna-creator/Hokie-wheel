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
    ca: fs.readFileSync("./sql_scripts/DigiCertGlobalRootCA.crt.pem"),
  },
});

connection.connect((err) => {
  if (err) {
    console.error("Error connecting to MySQL:", err);
    return;
  }
  console.log("Connected to MySQL");
});


// Route for handling form submission
 //branch form
app.post("/branchForm", (req, res) => {
  const { branchId, city, state, contact } = req.body;

  const query = "INSERT INTO branch (BRANCH_ID, CITY, STATE, CONTACT) VALUES (?, ?, ?, ?)";

  connection.query(query, [branchId, city, state, contact], (error, results, fields) => {
    if (error) {
      console.error("Error inserting data:", error);
      res.status(500).send("Error inserting data into the database");
      return;
    }
    console.log("New Branch Details added successfully!");
    res.redirect("/branchForm?success=true");
    
  });
});


//branch DELETE form
app.post("/branchDeleteForm", (req, res) => {
  const { branchId } = req.body;

  const query = "DELETE FROM branch WHERE BRANCH_ID = ?";

  connection.query(query, branchId, (error, results, fields) => {
    if (error) {
      console.error("Error deleting data:", error);
      res.status(500).send("Error deleting data from the database");
      return;
    }
    console.log("Given Branch deleted successfully!");
    res.status(200).send("Given Branch deleted successfully!");
    
  });
});

// insurance Form
app.post("/insuranceForm", (req, res) => {
  const { insuranceId, insuranceType, description, cost } = req.body;

  const query = "INSERT INTO insurance (INSURANCE_ID, INSURANCE_TYPE, DESCRIPTION, COST) VALUES (?, ?, ?, ?)";

  connection.query(query, [insuranceId, insuranceType, description, cost], (error, result, fields) => {
    if (error) {
      console.error("Error inserting data:", error);
      res.status(500).send("Error inserting data into the database");
      return;
    }
    console.log("New Insurance added successfully");
    res.status(200).send("New Insurance added successfully");
    
  });
});

// vehicle Form
app.post("/vehicleForm", (req, res) => {
  const { vehicleId, cost, model, type, year, brand, branchId } = req.body;

  const query = "INSERT INTO VEHICLE (VEHICLE_ID, COST, MODEL, TYPE, YEAR, BRAND, BRANCH_ID) VALUES (?, ?, ?, ?, ?, ?, ?)";

  connection.query(query, [vehicleId, cost, model, type, year, brand, branchId], (error, result, fields) => {
    if (error) {
      console.error("Error inserting data:", error);
      res.status(500).send("Error inserting data into the database");
      return;
    }
    console.log("New Vehicle added successfully");
    res.status(200).send("New Vehicle added successfully");
    
  });
});

// cutomer Form
app.post("/SignUp", (req, res) => {
  const { first_name, last_name, email, license, contact } = req.body;

  const query = "INSERT INTO CUSTOMER (LICENSE, CONTACT ,EMAIL, FIRST_NAME, LAST_NAME) VALUES (?, ?, ?, ?, ?)";

  connection.query(query, [license, contact ,email, first_name, last_name], (error, result, fields) => {
    if (error) {
      console.error("Error inserting data:", error);
      res.status(500).send("Error inserting data into the database");
      return;
    }
    console.log("New Customer added successfully");
    res.status(200).send("New Customer added successfully");
    
  });
});


app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
