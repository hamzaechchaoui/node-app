const express = require('express');

const PORT = 4000;
const app = express();

app.get('/', (req, res) => res.send('<h1> Hello!  boss</h1>'));
app.listen(PORT, () => console.log(`App is up on port : ${PORT}`));