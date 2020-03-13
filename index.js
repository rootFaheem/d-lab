const express = require("express");
const redis = require("redis");

const app = express();
const client = redis.createClient({
  host: "redis-server",
  port: 6379
});

client.set("visits", 0);

app.get("/", (req, res, next) =>
  res.status(200).send("How are you? Is this really working")
);

app.get("/visits", (req, res, next) => {
  client.get("visits", (err, visits) => {
    res.status(200).send(`Total Visits: ${visits}`);
    client.set("visits", parseInt(visits) + 1);
  });
});

app.listen(8081, () => console.log("🚀 server running at 8081"));
