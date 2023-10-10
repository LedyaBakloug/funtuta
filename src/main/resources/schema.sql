CREATE SCHEMA IF NOT EXISTS funtuta;
USE funtuta;

DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    id         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50)     NOT NULL,
    last_name  VARCHAR(50)     NOT NULL,
    email      VARCHAR(100)    NOT NULL,
    password   VARCHAR(255) DEFAULT NULL,
    username   VARCHAR(100)    NOT NULL,
    CONSTRAINT UQ_Users_Email UNIQUE (email)
)