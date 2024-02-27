const express = require("express");
const ejs = require("ejs");

const app = express();



// Set view engine
app.set("view engine", "ejs");

// Middleware for serving static files
app.use(express.static("public"));

// Middleware to parse JSON and URL-encoded request bodies
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Routes

app.get("/", (req, res) => {
  res.render("index");
});

app.get("/branchForm", (req, res) => {
  res.render("branchForm");
});

app.get("/insuranceForm", (req, res) => {
  res.render("insuranceForm");
});

app.get("/vehicleForm", (req, res) => {
  res.render("vehicleForm");
});

app.get("/SignUp", (req, res) => {
  res.render("SignUp");
});
module.exports = app;
