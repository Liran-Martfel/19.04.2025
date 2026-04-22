--1
SELECT DISTINCT type
FROM netflix_movies_detailed_up_to_2025
ORDER BY type;

--2
SELECT DISTINCT 'cast'
FROM netflix_movies_detailed_up_to_2025
WHERE type = 'Movies'
AND genres LIKE '%Action%'
AND 'cast' IS NOT NULL
LIMIT 20;

--3
SELECT 
    title AS movie, 
    rating AS score
FROM netflix_movies_detailed_up_to_2025
WHERE genres LIKE '%Action%' 
  AND release_year > 2015
ORDER BY rating DESC
LIMIT 5;

--4
SELECT title
FROM netflix_movies_detailed_up_to_2025
WHERE genres LIKE '%Drama%' 
  AND 'cast' IS NULL;

--5
SELECT 
    title AS movie, 
    rating AS score
FROM netflix_movies_detailed_up_to_2025
ORDER BY rating DESC;
  
--6
SELECT 
    title AS movie, 
    rating AS score
FROM netflix_movies_detailed_up_to_2025
WHERE release_year > 2015
ORDER BY score DESC;
