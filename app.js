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

app.get("/branchDeleteForm", (req, res) => {
  res.render("branchDeleteForm");
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

app.get("/branchUpdateForm", (req, res) => {
  res.render("branchUpdateForm");
});

app.get("/insuranceDeleteForm", (req, res) => {
  res.render("insuranceDeleteForm");
});

app.get("/insuranceUpdateForm", (req, res) => {
  res.render("insuranceUpdateForm");
});

app.get("/vehicleDeleteForm", (req, res) => {
  res.render("vehicleDeleteForm");
});

app.get("/vehicleUpdateForm", (req, res) => {
  res.render("vehicleUpdateForm");
});

app.get("/customerDeactivationForm", (req, res) => {
  res.render("customerDeactivationForm");
});

app.get("/customerUpdateForm", (req, res) => {
  res.render("customerUpdateForm");
});

module.exports = app;
