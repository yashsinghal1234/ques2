const express = require("express");

const app = express();

const PORT = process.env.PORT || 3000;

app.get("/health", (req, res) => {
    res.send("Service is healthy");
});

app.get("/status", (req, res) => {
    res.json({
        service: "inventory-service",
        status: "running",
        timestamp: new Date()
    });
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});