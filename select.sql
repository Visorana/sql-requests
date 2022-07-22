SELECT title FROM album
	WHERE EXTRACT(YEAR FROM release_date) = 2018;


SELECT title, length FROM track
	WHERE length = (SELECT max(length) FROM track);


SELECT title, length FROM track
	WHERE length >= '00:3:30';
	
	
SELECT name, release_date FROM mixtape
	WHERE EXTRACT(YEAR FROM release_date) <= 2020 AND EXTRACT(YEAR FROM release_date) >= 2018;


SELECT stage_name FROM artist
	WHERE ARRAY_LENGTH(REGEXP_SPLIT_TO_ARRAY(stage_name, '\s+'), 1) = 1;
	

SELECT title FROM track
	WHERE title ILIKE '%my%'
	