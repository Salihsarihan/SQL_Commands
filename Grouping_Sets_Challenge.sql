select 
c.first_name,c.last_name, p.staff_id, sum(p.amount) as amount
from payment p
inner join customer c
on p.customer_id = c.customer_id
group by 
grouping sets(
   (c.first_name,c.last_name),
   (c.first_name,c.last_name,p.staff_id))
order by 1 asc