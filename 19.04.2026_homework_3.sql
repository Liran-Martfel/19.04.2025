SELECT DISTINCT type
FROM netflix_movies_detailed_up_to_2025
ORDER BY type;

SELECT DISTINCT cast
FROM netflix_movies_detailed_up_to_2025
WHERE genre LIKE '%Action%'
AND cast IS NOT NULL
LIMIT 20;

SELECT 
    title AS movie, 
    rating AS score
FROM netflix_movies_detailed_up_to_2025
WHERE genre LIKE '%Action%' 
  AND release_year > 2015
ORDER BY rating DESC
LIMIT 5;

SELECT title
FROM netflix_movies_detailed_up_to_2025
WHERE genre LIKE '%Drama%' 
  AND cast IS NULL;
  
SELECT 
    title AS movie, 
    rating AS score
FROM netflix_movies_detailed_up_to_2025
ORDER BY rating DESC;
  
  
SELECT 
    title AS movie, 
    rating AS score
FROM netflix_movies_detailed_up_to_2025
WHERE release_year > 2015
ORDER BY score DESC;