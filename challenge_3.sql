select count(f2.film_id), concat(a1.first_name, ' ' ,a1.last_name) as f3 from actor a1
 inner join film_actor f1
 on a1.actor_id = f1.actor_id
 inner join film f2
 on f1.film_id = f2.film_id
 group by f3
 order by count(f2.film_id) desc