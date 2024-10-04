CREATE TABLE City (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

-- Create Theater Table
CREATE TABLE Theater (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    city_id INT NOT NULL,
    capacity INT NOT NULL,
    FOREIGN KEY (city_id) REFERENCES City(id)
);

-- Create Movie Table
CREATE TABLE Movie (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL UNIQUE,
    genre VARCHAR(255),
    duration INT NOT NULL,
    release_date DATE NOT NULL
);

-- Create MovieShow Table
CREATE TABLE MovieShow (
    id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT NOT NULL,
    theater_id INT NOT NULL,
    date DATE NOT NULL,
    time TIME NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES Movie(id),
    FOREIGN KEY (theater_id) REFERENCES Theater(id),
    UNIQUE(movie_id, theater_id, date, time)
);

-- Create User Table
CREATE TABLE User (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone_number VARCHAR(15) UNIQUE,
    password_hash VARCHAR(255) NOT NULL
);

-- Create Booking Table
CREATE TABLE Booking (
    id INT PRIMARY KEY AUTO_INCREMENT,
    show_id INT NOT NULL,
    user_id INT NOT NULL,
    seat_number VARCHAR(10) NOT NULL,
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (show_id) REFERENCES MovieShow(id),
    FOREIGN KEY (user_id) REFERENCES User(id),
    UNIQUE(show_id, seat_number)
);
