CREATE SCHEMA for_lab;
CREATE TABLE persons (
    id SERIAL PRIMARY KEY,
    last_name VARCHAR(255),
    first_name VARCHAR(255),
    login VARCHAR(255),
    password VARCHAR(255)
);
INSERT INTO persons (last_name, first_name, "login", "password") VALUES ('Uliyana', 'Burdovitsina', 'admin', 'pass123');

SELECT * from persons;

CREATE TABLE notes (
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    entries TEXT,
    created TIMESTAMP DEFAULT NOW()
);