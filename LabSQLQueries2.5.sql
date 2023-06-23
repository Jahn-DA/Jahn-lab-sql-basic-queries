-- Select all the actors with the first name ‘Scarlett’.
SELECT * FROM actor
WHERE first_name LIKE "%Scarlett";
-- How many physical copies of movies are available for rent in the store's inventory? How many unique movie titles are available?
SELECT count(inventory_id) as 'available for rent' FROM inventory;
SELECT count(DISTINCT title) FROM film;
-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT max(length) as 'max_duration', min(length) as 'min_duration' FROM film; 
-- What's the average movie duration expressed in format (hours, minutes)?
SELECT CONCAT(FLOOR(AVG(length)/60), ' hours ', round(AVG(length)%60,0), ' minutes') FROM film;
-- How many distinct (different) actors' last names are there?
SELECT count(DISTINCT last_name) FROM actor;
-- How many days was the company operating? Assume the last rental date was their closing date. (check DATEDIFF() function)
SELECT max(DATEDIFF(return_date, rental_date)) FROM rental;
-- Show rental info with additional columns month and weekday. Get 20 results?
select *, monthname(rental_date) as rental_month, monthname(return_date) as return_month, dayname(rental_date) as rental_weekday, dayname(return_date) as return_weekday from rental
limit 20;
-- Get release years.
SELECT release_year FROM film;
-- Get all films with ARMAGEDDON in the title.
SELECT * FROM film
WHERE title LIKE '%AMAGEDDON%';
-- Get all films which title ends with APOLLO.
SELECT * FROM film 
WHERE title LIKE '%APOLLO';
-- Get 10 the longest films.
SELECT * FROM film
ORDER BY length DESC
LIMIT 10;

