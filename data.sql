INSERT INTO City (name) 
VALUES 
('Gurgaon'),
('Delhi'),
('Noida'),
('Bangalore')


INSERT INTO Theater (name, city_id, capacity) 
VALUES 
('PVR Cinemas', 1, 500),
('INOX Leisure', 2, 450),
('Cinepolis', 3, 400);

INSERT INTO Movie (title, genre, duration, release_date) 
VALUES 
('Tumbaad', 'Horror', 146, '2023-01-25'),
('Venom', 'Action', 169, '2023-09-07'),
('Deadpool', 'Action', 161, '2016-12-23'),
('Devara', 'Action', 157, '2019-02-14'),
('RRR', 'Action', 187, '2022-03-25');


INSERT INTO MovieShow (movie_id, theater_id, date, time) 
VALUES 
(1, 1, '2024-09-30', '14:00:00'),
(2, 1, '2024-09-30', '17:00:00'),
(3, 2, '2024-09-30', '16:00:00'),
(4, 3, '2024-09-30', '20:00:00'),
(5, 3, '2024-09-30', '19:30:00');


INSERT INTO User (name, email, phone_number, password_hash) 
VALUES 
('Ravi Kumar', 'ravi.kumar@example.com', '9876543210', 'hashed_password_1'),
('Sneha Patel', 'sneha.patel@example.com', '8765432109', 'hashed_password_2'),
('Amit Sharma', 'amit.sharma@example.com', '9988776655', 'hashed_password_3'),
('Priya Gupta', 'priya.gupta@example.com', '8899776655', 'hashed_password_4');


INSERT INTO Booking (show_id, user_id, seat_number) 
VALUES 
(1, 1, 'A1'),
(2, 2, 'B2'),
(3, 1, 'C3'),
(4, 3, 'D4'),
(5, 4, 'E5');
