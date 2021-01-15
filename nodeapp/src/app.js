const app = require('express')();
const config = require('./config');


app.get('/', (req, res) => res.status(400).send('Hello World this is a new version with Melia!!'));

const server = app.listen(config.port, () => console.log(`App is running on port ${config.port}`));

module.exports = {
    app,
    server
}