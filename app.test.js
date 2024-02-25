const request = require("supertest");
const app = require("./app");

describe("GET /", () => {
  let server;

  beforeAll((done) => {
    server = app.listen(3000, () => {
      console.log("Server started");
      done();
    });
  });

  afterAll((done) => {
    server.close(done);
  });

  it("responds with status code 200", async () => {
    const response = await request(app).get("/");
    expect(response.statusCode).toBe(200);
  });
});
