create database mydb;
use mydb;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

INSERT INTO users (name, email) VALUES
('John Doe', 'john@example.com'),
('Rakan Asfour', 'Rakanasfour@gmail.com'),
('Bob Johnson', 'bob@example.com');
drop table users;
