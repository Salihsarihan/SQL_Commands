select c1.name, count(title) as c2 from film f1
 inner join film_category f2
 on f1.film_id=f2.film_id
 inner join category c1
 on f2.category_id= c1.category_id
group by name 
order by c2 desc
