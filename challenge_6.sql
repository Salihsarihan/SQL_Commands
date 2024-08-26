select co.country as country, ci.city as city, sum(p.amount) as amount from payment p
 inner join customer c
 on p.customer_id = c.customer_id
 inner join address a
 on c.address_id = a.address_id
 inner join city ci
 on a.city_id = ci.city_id
 inner join country co
 on ci.country_id=co.country_id
group by country, city
order by amount asc LIMIT 1;