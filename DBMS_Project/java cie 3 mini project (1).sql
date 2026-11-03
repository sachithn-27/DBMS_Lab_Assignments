
CREATE DATABASE IF NOT EXISTS Reg_Events;

USE Reg_Events;


CREATE TABLE IF NOT EXISTS Events (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    event_name VARCHAR(100) NOT NULL,
    event_date DATE NOT NULL
);


INSERT INTO Events (event_name, event_date) VALUES
('CodeCon', '2026-10-21'),
('Argonyx', '2026-11-23'),
('AR-VR', '2026-11-25');



CREATE TABLE IF NOT EXISTS Registrations (
    registration_id INT PRIMARY KEY AUTO_INCREMENT,
    registor_name VARCHAR(100) NOT NULL,
    phone VARCHAR(100) NOT NULL,
    event_id INT NOT NULL,
    FOREIGN KEY (event_id) REFERENCES events(event_id)
);


INSERT INTO Registrations (registor_name, phone, event_id) VALUES
('Shrihan', '9876543210', 1),
('Sachith', '9876501234', 2),
('Swayam', '9876512345', 3),
('Mohith K V', '9876512349', 1);

SELECT * FROM Events;
SELECT * FROM Registrations;
