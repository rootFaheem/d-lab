const express = require("express");

const app = express();

app.get("/", (req, res, next) => res.send("Hi There"));

app.listen(8000, () => console.log("🚀 server running at 8000"));
