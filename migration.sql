
CREATE DATABASE fitness_tracker;

-- Switch database
USE fitness_tracker;


CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
);

CREATE TABLE exercises (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
);

CREATE TABLE workouts (
  workout_id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL,
  exercise_id INT NOT NULL,
  sets INT NOT NULL,
  reps INT NOT NULL,
  exercise_name VARCHAR(255) NOT NULL,
  calories_burned INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (exercise_id) REFERENCES exercises(exercise_id)
);


CREATE TABLE calorie_intake (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  calories INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id)
);
