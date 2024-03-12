use sakila; -- Same as double-clicking on the "schemas" on the classicmodels
SHOW TABLES;
SELECT * FROM actor, film, customer;
select title from film;
select name as language from language;
--  List of first names of all employees from the staff table
select first_name from staff; -- 2 staff, Mike and Bob
-- Retrieve unique release years.
select distinct release_year from film; -- 2006
-- Counting records for database insights
		-- Determine the number of stores that the company has.
select distinct store_id from store; -- 2 shops
select distinct staff_id from staff; -- 2 staff
select * from rental; -- 1000 films have been rented, but they might be the same
select distinct film_id from inventory; -- 958 different movies in the inventory (that can be rented), the total number of movies in the inventory is 1000

-- Determine the number of distinct last names of the actors in the database.
select distinct last_name from actor; -- 121 different last names
-- Retrieve the 10 longest films.
select length, title from film order by length desc limit 10;  -- 185 is the longer length and filters on the 10 movies
--  Retrieve all actors with the first name "SCARLETT".
select concat(first_name, ' ', last_name) as actor_name
from actor
where first_name = 'SCARLETT';

-- BONUS:  Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select title from film where title like '%armageddon%' and length > 100; -- 4 movies
-- Determine the number of films that include Behind the Scenes content
select count(*) 
from film 
where special_features like '%Behind the Scenes%'; -- 538 movies
