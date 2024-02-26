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
