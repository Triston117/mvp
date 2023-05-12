CREATE TABLE exercises (
  exercise_id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT
);

CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL
);

CREATE TABLE workouts (
  workout_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  date DATE NOT NULL,
  calories_burned INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE workout_exercises (
  workout_id INT NOT NULL,
  exercise_id INT NOT NULL,
  sets INT NOT NULL,
  reps INT NOT NULL,
  FOREIGN KEY (workout_id) REFERENCES workouts(workout_id),
  FOREIGN KEY (exercise_id) REFERENCES exercises(exercise_id),
  PRIMARY KEY (workout_id, exercise_id)
);

CREATE TABLE calorie_intake (
  calorie_intake_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  date DATE NOT NULL,
  calories INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);
