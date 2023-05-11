import express from "express";
import pg from "pg";
import dotenv from "dotenv";
dotenv.config();
const app = express();
const db = new pg.Pool({
  connectionString: process.env.DATABASE_URL,
});
app.use(express.static("public"));

app.get;

app.listen();
