const app = require('express')();
const config = require('./config');


app.get('/', (req, res) => res.send('Hello World new version!!'));

const server = app.listen(config.port, () => console.log(`App is running on port ${config.port}`));

module.exports = {
    app,
    server
}