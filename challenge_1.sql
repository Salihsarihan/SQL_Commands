select name,max(length) from film f1
 inner join film_category f2
 on f1.film_id = f2.film_id
 inner join category c1
 on f2.category_id = c1.category_id
where name = 'Drama' or name= 'Sports'
group by name
