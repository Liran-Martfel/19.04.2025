DROP TABLE homework_2;
CREATE TABLE homework_2
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title TEXT NOT NULL,
	genre TEXT NOT NULL,
	year INTEGER,
	language TEXT NOT NULL
);

INSERT INTO homework_2 (id, title, genre, year, language)
VALUES 
(1, 'Metro Rush', 'Action', 2005, 'English'),
(2, 'Quiet Lake', 'Drama', 2012, 'English'),
(3, 'Night Pulse', 'Horror', 2018, 'Spanish'),
(4, 'Skyline Code', 'Action', 2021, 'English'),
(5, 'Tiny Planet', 'Family', 2010, 'French'),
(6, 'Silver Track', 'Thriller', 2016, 'Spanish'),
(7, 'Golden Path', 'Drama', 2016, 'French');

--1
SELECT DISTINCT language
FROM homework_2
ORDER BY language ASC;

--2
SELECT DISTINCT year
FROM homework_2
WHERE genre = 'Action' OR genre = 'Drama'
ORDER BY year DESC;

--3
SELECT DISTINCT genre, language
FROM homework_2
ORDER BY language ASC;

--bonus
SELECT COUNT(DISTINCT genre) AS genre_count
FROM homework_2;
