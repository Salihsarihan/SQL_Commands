create materialized view  mv_film_category
as
select title,length, c1.name
from film f1
INNER JOIN film_category f2
on f1.film_id = f2.film_id
INNER JOIN category c1
on f2.category_id = c1.category_id
where c1.name IN('Action','Comedy')
Order by length DESC

select * from mv_film_category
refresh materialized view mv_film_category

update film 
set length= 192
where title = 'SATURN NAME'