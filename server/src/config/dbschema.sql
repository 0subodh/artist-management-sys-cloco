-- we will create database schema in PostgreSQL by running following SQL commands in our Postgres client

CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(500) NOT NULL,
    phone VARCHAR(20),
    role ENUM('super_admin', 'artist_manager', 'artist') NOT NULL,
    dob TIMESTAMP,
    gender ENUM('m', 'f', 'o'),
    address VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE artist (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    dob TIMESTAMP,
    gender ENUM('m', 'f', 'o'),
    address VARCHAR(255),
    first_release_year INT,
    no_of_albums_released INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE music (
    id SERIAL PRIMARY KEY,
    artist_id INT REFERENCES artist(id) ON DELETE CASCADE,
    title VARCHAR(255) NOT NULL,
    album_name VARCHAR(255),
    genre ENUM('rnb', 'country', 'classic', 'rock', 'jazz'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);