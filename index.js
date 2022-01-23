const express = require('express');

const app = express();
const port = '7000';

// routes

// page root atau `/`
app.get('/', (req, res) => {
    res.send('Hello World!');
});

app.listen(port, () => {
    console.log('app listening on port', port);
});
