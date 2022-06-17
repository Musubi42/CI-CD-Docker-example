const ronin = require("ronin-server");
const mocks = require("ronin-mocks");
const database = require("ronin-database");
const dotenv = require("dotenv").config();

const server = ronin.server();

database.connect(process.env.CONNECTIONSTRING);
server.use("/", mocks.server(server.Router(), false, false));
server.start();
