\c fitness_tracker

INSERT INTO users (username, password, email)
VALUES ('user1', 'password1', 'user1@example.com');

INSERT INTO exercises (name)
VALUES ('Bench Press'), ('Squats'), ('Deadlifts'), ('Shoulder Press');

INSERT INTO workouts (user_id, date, calories_burned)
VALUES (1, '2023-05-11', 150),
       (1, '2023-05-11', 200),
       (1, '2023-05-11', 250),
       (1, '2023-05-11', 120),
       (2, '2023-05-11', 0),
       (5, '2023-05-11', 0); -- add a workout with id 5


INSERT INTO workouts (user_id, date)
VALUES (2, '2023-05-11'),
       (2, '2023-05-11'),
       (2, '2023-05-11'),
       (2, '2023-05-11'),
       (2, '2023-05-11');


INSERT INTO workout_exercises (workout_id, exercise_id, sets, reps)
VALUES (1, 2, 3, 10), -- change the exercise_id to 2
       (2, 2, 4, 8),
       (3, 3, 5, 5),
       (4, 4, 3, 12),
       (1, 5, 5, 8);



INSERT INTO workout_exercises (workout_id, exercise_id, sets, reps)
VALUES (5, 1, 4, 12),
       (6, 2, 3, 10),
       (7, 3, 3, 6),
       (8, 4, 2, 12),
       (9, 5, 5, 8);


