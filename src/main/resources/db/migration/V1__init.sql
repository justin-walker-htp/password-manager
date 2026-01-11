CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE passwords (
    id SERIAL PRIMARY KEY,
    site_url VARCHAR(255) NOT NULL,
    site_username VARCHAR(100) NOT NULL,
    encrypted_password VARCHAR(500) NOT NULL,
    user_id INT REFERENCES users(id)
);
