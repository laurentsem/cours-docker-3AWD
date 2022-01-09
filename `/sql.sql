CREATE DATABASE IF NOT EXISTS question4 CHARACTER SET utf8;
CREATE USER 'root'@'localhost' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON question4.* TO 'root'@'localhost';

USE question4;

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO users (username) VALUES
("Laurent"),
("Clément"),
("Avi")