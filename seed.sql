USE fitness_tracker;


INSERT INTO workouts (user_id, exercise_id, sets, reps, exercise_name)
VALUES (1, 1, 3, 10, 'Barbell Bench Press'),
       (1, 2, 3, 12, 'Dumbbell Bicep Curls'),
       (1, 3, 4, 8, 'Barbell Squats'),
       (1, 4, 2, 15, 'Tricep Pushdowns'),
       (1, 5, 4, 10, 'Lat Pulldowns');

INSERT INTO workouts (user_id, exercise_id, sets, reps, exercise_name)
VALUES (2, 1, 4, 12, 'Incline Dumbbell Press'),
       (2, 2, 3, 10, 'Hammer Curls'),
       (2, 3, 3, 6, 'Deadlifts'),
       (2, 4, 2, 12, 'Overhead Tricep Extension'),
       (2, 5, 5, 8, 'Seated Cable Rows');

INSERT INTO workouts (user_id, exercise_id, sets, reps, exercise_name)
VALUES (3, 1, 5, 8, 'Machine Chest Press'),
       (3, 2, 4, 12, 'Cable Hammer Curls'),
       (3, 3, 3, 10, 'Leg Press'),
       (3, 4, 2, 15, 'Cable Tricep Pushdowns'),
       (3, 5, 4, 10, 'Pull-ups');
