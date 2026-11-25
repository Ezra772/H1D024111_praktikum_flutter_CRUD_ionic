-- Database untuk Modul 2 (Auth Guard)
CREATE DATABASE IF NOT EXISTS belajarcrud;
USE belajarcrud;

DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Password disimpan dalam bentuk md5 (sesuai modul).
-- admin / admin123
INSERT INTO user (username, password) VALUES
('admin', MD5('admin123')),
('namasaya', MD5('admin123'));
