--Using subqueries, identify all actors who appear in the film ALTER VICTORY in the pagila database.
SELECT
actor.first_name,
actor.last_name
FROM
actor
INNER JOIN film_actor ON
actor.actor_id = film_actor.actor_id
INNER JOIN film ON
film_actor.film_id = film.film_id
WHERE title in (
select title from film where title = 'ALTER VICTORY');

--Using subqueries, display the titles of films that the employee Jon Stephens rented to customers.
SELECT 
title 
FROM film 
INNER JOIN inventory ON 
film.film_id = inventory.film_id
INNER JOIN staff ON
inventory.store_id = staff.store_id
WHERE staff.store_id in (
SELECT store_id FROM staff WHERE store_id = 2);

