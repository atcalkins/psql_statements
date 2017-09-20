CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(5000) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

INSERT INTO todos(title, details, priority, created_at, completed_at) VALUES
  ('Gym', 'Work out body part specific to the day', 1 , now(), now()),
  ('Listen to podcasts', null, 4, now(), null),
  ('Read', null, 5, now(), null),
  ('Clean out car', 'Vaccuum, wipe down leather with armour all, clean cupholders', 1, '2017-09-17 1:20', now()),
  ('Start another series', null, 5, now(), null),
  ('Laundry', 'Wash and fold dirty clothes', 1, now(), null),
  ('Daily Project', 'Finish up work from class at The Iron Yard', 3, now(), null),
  ('Clean apartment', null, 2, now(), null),
  ('Meal prep', null, 1, '2017-09-18 2:30', null),
  ('Clean out fridge', null, 4, now(), now()),
  ('Wash dishes', 'Make sure washer is full before starting dont waste water', 1, now(), now()),
  ('Take a walk outside', null, 4, now(), null),
  ('Get a car wash', 'dont let car get dirty, cleanliness is next to holiness', 4, now(), now()),
  ('Use foam roller', null, 2, now(), null),
  ('Stretch', null, 5, '2017-09-17 1:45', now());
  ('Call family', 'keeping up with them is important', 1, now(), null),
  ('Call girlfriend', 'unless you want problems', 3, now(), null),
  ('Practice code you are unsure of', null, 2, now(), null),
  ('Watch stripes', null, 3, now(), now()),
  ('Practice code you are unsure of', 'repitition helps solidify the mind', 4, now(), now()),

SELECT * FROM todos WHERE completed_at IS NULL AND priority = 3;

SELECT priority, COUNT(*)
FROM todos
WHERE completed_at IS NULL
GROUP BY priority
ORDER BY priority;

SELECT priority, COUNT(*) FROM todos
WHERE created_at > now()::date - 30
GROUP BY priority
ORDER BY priority;

SELECT title, details, priority, created_at
FROM todos
WHERE completed_at IS NULL
ORDER BY priority, created_at
LIMIT 1;
