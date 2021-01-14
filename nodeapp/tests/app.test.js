const request = require('supertest');
const {app, server} = require('../src/app');
describe('App Test', () => {
    it('should respond with 200', async () => {
        const res = await request(app)
            .get('/')
        expect(res.statusCode).toEqual(200);
    });
});
afterAll( async () => {
    server.close();
});