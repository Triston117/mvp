import express from "express";
import pg from "pg";
import dotenv from "dotenv";
dotenv.config();
const app = express();
const db = new pg.Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: {
    rejectUnauthorized: false,
  },
});
app.use(express.static("public"));

// Update user by ID
app.put("/users/:id", async (req, res) => {
  const userId = req.params.id;
  const { username, password, email } = req.body;
  try {
    const result = await db.query(
      "UPDATE users SET username=$1, password=$2, email=$3 WHERE user_id=$4",
      [username, password, email, userId]
    );
    res.json(result.rows[0]);
  } catch (err) {
    console.error(err);
    res.status(500).send("Internal Server Error");
  }
});

// Update calorie intake by ID
app.patch("/calorie_intake/:id", async (req, res) => {
  const intakeId = req.params.id;
  const { calories } = req.body;
  try {
    const result = await db.query(
      "UPDATE calorie_intake SET calories=$1 WHERE intake_id=$2",
      [calories, intakeId]
    );
    res.json(result.rows[0]);
  } catch (err) {
    console.error(err);
    res.status(500).send("Internal Server Error");
  }
});

// Get workouts by user ID
app.get("/workouts/:userId", async (req, res) => {
  const userId = req.params.userId;
  try {
    const result = await db.query("SELECT * FROM workouts WHERE user_id=$1", [
      userId,
    ]);
    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).send("Internal Server Error");
  }
});

app.listen(process.env.PORT || 3000, () => {
  console.log("Server started on port " + (process.env.PORT || 3000));
});
