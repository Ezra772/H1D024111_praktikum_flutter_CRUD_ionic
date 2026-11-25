-- Database untuk Modul 3 (CRUD Ionic 7 Angular)
CREATE DATABASE IF NOT EXISTS sinau;
USE sinau;

DROP TABLE IF EXISTS mahasiswa;
CREATE TABLE mahasiswa (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(100) NOT NULL,
  jurusan VARCHAR(100) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO mahasiswa (nama, jurusan) VALUES
('Ezra Zackysa', 'Teknik Informatika'),
('Budi Santoso', 'Sistem Informasi'),
('Citra Lestari', 'Teknologi Informasi');
