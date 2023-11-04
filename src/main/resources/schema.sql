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
    phone_number VARCHAR(50)     NOT NULL,
    CONSTRAINT UQ_Users_Email UNIQUE (email)
);

INSERT INTO users VALUES (id, 'Ledya', 'Bakloug', 'led.bak@djdkj.com', 'ldndjn', 'ledger', '68376387383')

SELECT * FROM users;