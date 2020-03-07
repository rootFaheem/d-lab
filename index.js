const express = require("express");

const app = express();

app.get("/", (req, res, next) =>
  res.send("How are you? Is this really working")
);

app.listen(8080, () => console.log("🚀 server running at 8080"));
