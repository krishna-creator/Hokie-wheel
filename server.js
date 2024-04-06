const app = require("./app");
//const mysql = require("mysql");
const mysql = require('mysql2')
const fs = require("fs");
require("dotenv").config();

const port = process.env.PORT || 1337;

// Connect YourMySQL connection details
const connection = mysql.createConnection({
  port: 12425,
  host: "mysql-11b13c58-vt-964b.a.aivencloud.com",
  user: "avnadmin",
  password: "AVNS_vPuNzcMRnMJDFhRqKsT",
  database: "defaultdb",
  connectTimeout: 20000,
  // ssl: {
  //   ca: fs.readFileSync("./sql_scripts/ca.pem"),
  // },
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

  const query = "INSERT INTO BRANCH (BRANCH_ID, CITY, STATE, CONTACT) VALUES (?, ?, ?, ?)";

  connection.query(query, [branchId, city, state, contact], (error, results, fields) => {
    if (error) {
      console.error("Error inserting data:", error);
      res.status(500).send("Error inserting data into the database");
      return;


  );
});

//branch DELETE form
app.post("/branchDeleteForm", (req, res) => {
  const { branchId } = req.body;

  const query = "DELETE FROM BRANCH WHERE BRANCH_ID = ?";

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

//branch UPDATE form
app.post("/branchUpdateForm", (req, res) => {
  const { branchId, city, state, contact } = req.body;

  const query = "UPDATE BRANCH SET CITY = ?, STATE = ?, CONTACT = ? WHERE BRANCH_ID = ?";

  connection.query(query, [city, state, contact, branchId], (error, results, fields) => {
    if (error) {
      console.error("Error updating data:", error);
      res.status(500).send("Error updating data into the database");
      return;

    }
  );
});

// insurance Form
app.post("/insuranceForm", (req, res) => {
  const { insuranceId, insuranceType, description, cost } = req.body;

  const query = "INSERT INTO INSURANCE (INSURANCE_ID, INSURANCE_TYPE, DESCRIPTION, COST) VALUES (?, ?, ?, ?)";

  connection.query(query, [insuranceId, insuranceType, description, cost], (error, result, fields) => {
    if (error) {
      console.error("Error inserting data:", error);
      res.status(500).send("Error inserting data into the database");
      return;
    }
  );
});

// vehicle Form
app.post("/vehicleForm", (req, res) => {
  const { vehicleId, cost, model, type, year, brand, branchId } = req.body;

  const query =
    "INSERT INTO VEHICLE (VEHICLE_ID, COST, MODEL, TYPE, YEAR, BRAND, BRANCH_ID) VALUES (?, ?, ?, ?, ?, ?, ?)";

  connection.query(
    query,
    [vehicleId, cost, model, type, year, brand, branchId],
    (error, result, fields) => {
      if (error) {
        console.error("Error inserting data:", error);
        res.status(500).send("Error inserting data into the database");
        return;
      }
      console.log("New Vehicle added successfully");
      res.status(200).send("New Vehicle added successfully");
    }
  );
});

// cutomer Form
app.post("/SignUp", (req, res) => {
  const { first_name, last_name, email, license, contact } = req.body;

  const query =
    "INSERT INTO CUSTOMER (LICENSE, CONTACT ,EMAIL, FIRST_NAME, LAST_NAME) VALUES (?, ?, ?, ?, ?)";

  connection.query(
    query,
    [license, contact, email, first_name, last_name],
    (error, result, fields) => {
      if (error) {
        console.error("Error inserting data:", error);
        res.status(500).send("Error inserting data into the database");
        return;
      }
      console.log("New Customer added successfully");
      res.status(200).send("New Customer added successfully");
    }
  );
});

// insurance DELETE Form
app.post("/insuranceDeleteForm", (req, res) => {
  const { insuranceId } = req.body;

  const query = "DELETE FROM INSURANCE WHERE INSURANCE_ID = ?";

  connection.query(query, [insuranceId], (error, result, fields) => {
    if (error) {
      console.error("Error deleting data:", error);
      res.status(500).send("Error deleting data from the database");
      return;
    }
    console.log("Given Insurance deleted successfully");
    res.status(200).send("Given Insurance deleted successfully");
  });
});

// insurance UPDATE Form
app.post("/insuranceUpdateForm", (req, res) => {
  const { insuranceId, insuranceType, description, cost } = req.body;

  const query = "UPDATE INSURANCE SET INSURANCE_TYPE = ?, DESCRIPTION = ?, COST = ? WHERE INSURANCE_ID = ?";

  connection.query(query, [insuranceType, description, cost, insuranceId], (error, result, fields) => {
    if (error) {
      console.error("Error updating data:", error);
      res.status(500).send("Error updating data into the database");
      return;
    }
  );
});

// vehicle DELETE Form
app.post("/vehicleDeleteForm", (req, res) => {
  const { vehicleId } = req.body;

  const query = "DELETE FROM VEHICLE WHERE VEHICLE_ID = ?";

  connection.query(query, [vehicleId], (error, result, fields) => {
    if (error) {
      console.error("Error deleting data:", error);
      res.status(500).send("Error deleting data from the database");
      return;
    }
    console.log("Given Vehicle deleted successfully");
    res.status(200).send("Given Vehicle deleted successfully");
  });
});

// vehicle UPDATE Form
app.post("/vehicleUpdateForm", (req, res) => {
  const { vehicleId, cost, model, type, year, brand, branchId } = req.body;

  const query =
    "UPDATE VEHICLE SET COST = ?, MODEL = ?, TYPE = ?, YEAR = ?, BRAND = ?, BRANCH_ID = ? WHERE VEHICLE_ID = ?";

  connection.query(
    query,
    [cost, model, type, year, brand, branchId, vehicleId],
    (error, result, fields) => {
      if (error) {
        console.error("Error updating data:", error);
        res.status(500).send("Error updating data into the database");
        return;
      }
      console.log("Given Vehicle details updated successfully");
      res.status(200).send("Given Vehicle details added successfully");
    }
  );
});

// cutomer DEACTIVATION Form
app.post("/customerDeactivationForm", (req, res) => {
  const { license } = req.body;

  const query = "DELETE FROM CUSTOMER WHERE LICENSE = ?";

  connection.query(query, [license], (error, result, fields) => {
    if (error) {
      console.error("Error deleting data:", error);
      res.status(500).send("Error deleting data from the database");
      return;
    }
    console.log("Given Customer deleted successfully");
    res.status(200).send("Given Customer deleted successfully");
  });
});

// cutomer UPDATE Form
app.post("/customerUpdateForm", (req, res) => {
  const { first_name, last_name, email, license, contact } = req.body;

  const query =
    "UPDATE CUSTOMER SET CONTACT = ?, EMAIL = ?, FIRST_NAME = ?, LAST_NAME = ? WHERE LICENSE = ?";

  connection.query(
    query,
    [contact, email, first_name, last_name, license],
    (error, result, fields) => {
      if (error) {
        console.error("Error updating data:", error);
        res.status(500).send("Error updating data into the database");
        return;
      }
      console.log("Given Customer details updated successfully");
      res.status(200).send("Given Customer details updated successfully");
    }
  );
});

app.get("/locations", (req, res) => {
  const userInput = req.query.q;
  const query = "SELECT city FROM branch WHERE city LIKE ? LIMIT 10";

  connection.query(query, [`%${userInput}%`], (error, results) => {
    if (error) throw error;
    res.json(results);
  });
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
