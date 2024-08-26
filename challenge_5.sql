select ci.city, sum(p.amount) as sum  from payment p
   inner join customer c
   on p.customer_id = c.customer_id
   inner join address a
   on c.address_id = a.address_id
   inner join city ci
   on a.city_id = ci.city_id
group by ci.city 
order by sum desc LIMIT 1;
  


