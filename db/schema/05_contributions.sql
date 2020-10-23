-- Drop and recreate contributors table

DROP TABLE IF EXISTS contributions CASCADE;

CREATE TABLE contributions (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  map_id INTEGER REFERENCES maps(id) ON DELETE CASCADE
);
