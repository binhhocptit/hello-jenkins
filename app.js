const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send("🚀 Website deployed by Jenkins CI/CD!");
});

app.listen(3000, () => {
    console.log("Server running on http://localhost:3000");
});
