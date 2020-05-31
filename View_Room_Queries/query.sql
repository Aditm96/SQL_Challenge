create view film_count as
select title,
(
	select count(inventory.film_id)
	from inventory 
	where inventory.film_id = film.film_id
)
as "Number of Copies"
from film;

select * from title_count
where 'Number of Copies' = 7;

select title, "Number of Copies"
from title_count
where "Number of Copies" = 7;