select staff_id, round(avg(total),2) as avg_amount  from (select sum(amount) as total, staff_id , customer_id from payment 
										  group by staff_id, customer_id) a
group by staff_id 

