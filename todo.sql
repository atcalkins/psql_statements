CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(5000) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Laundry', 'Wash and fold dirty clothes', '1', NOW(), now());

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Daily Project', 'Finish up work from class at The Iron Yard', '2', now(), NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Meal prep', 'Cook chicken and rice for weekly lunches', '3', now(), NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Gym', 'Work out body part specific to the day', '4', now(), NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Clean around apartment', 'Vaccuum and wipe counters', '5', now(), NULL);

SELECT * FROM todos WHERE completed_at = NULL;
SELECT * FROM todos WHERE completed_at IS NULL;
SELECT * FROM todos WHERE priority > 1;
UPDATE todos SET completed_at = now() WHERE id = 3;
DELETE FROM todos WHERE completed_at IS NOT NULL;
