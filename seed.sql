USE fitness_tracker;


INSERT INTO users (username, password, email)
VALUES ('user1', 'password1', 'user1@example.com');


INSERT INTO exercises (exercise_name)
VALUES ('Bench Press'), ('Squats'), ('Deadlifts'), ('Shoulder Press');


INSERT INTO workouts (user_id, exercise_id, sets, reps, exercise_name, calories_burned)
VALUES (1, 1, 3, 10, 'Bench Press', 150),
       (1, 2, 4, 8, 'Squats', 200),
       (1, 3, 5, 5, 'Deadlifts', 250),
       (1, 4, 3, 12, 'Shoulder Press', 120);


INSERT INTO workouts (user_id, exercise_id, sets, reps, exercise_name)
VALUES (2, 1, 4, 12, 'Incline Dumbbell Press', 150),
       (2, 2, 3, 10, 'Hammer Curls', 100),
       (2, 3, 3, 6, 'Deadlifts', 300),
       (2, 4, 2, 12, 'Overhead Tricep Extension', 200),
       (2, 5, 5, 8, 'Seated Cable Rows', 150);

INSERT INTO workouts (user_id, exercise_id, sets, reps, exercise_name)
VALUES (3, 1, 5, 8, 'Machine Chest Press', 200),
       (3, 2, 4, 12, 'Cable Hammer Curls' , 150),
       (3, 3, 3, 10, 'Leg Press', 300),
       (3, 4, 2, 15, 'Cable Tricep Pushdowns', 150),
       (3, 5, 4, 10, 'Pull-ups', 200);
