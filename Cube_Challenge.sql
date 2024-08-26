select p.customer_id,DATE(p.payment_date),f.title, sum(amount) from payment p
left join rental r
on p.rental_id = r.rental_id
left join inventory i
on i.inventory_id = r.inventory_id
left join film f
on f.film_id = i.film_id
group by 
cube(
p.customer_id,
DATE(p.payment_date),
f.title
)
order by 1,2,3