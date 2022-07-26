SELECT title, EXTRACT(YEAR FROM release_date) FROM album
	WHERE EXTRACT(YEAR FROM release_date) = 2018;


SELECT title, length FROM track
	WHERE length = (SELECT max(length) FROM track);


SELECT title, length FROM track
	WHERE length >= '00:3:30';
	
	
SELECT name, release_date FROM mixtape
	WHERE EXTRACT(YEAR FROM release_date) BETWEEN 2018 AND 2020;


SELECT stage_name FROM artist
	WHERE stage_name NOT LIKE '% %';
	

SELECT title FROM track
	WHERE title ILIKE '%my%'