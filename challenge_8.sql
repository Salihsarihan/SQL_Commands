--Level: Difficult to very difficult

--Topic: EXTRACT + Uncorrelated subquery

--Task: Create a query that shows average daily revenue of all Sundays.

--Question: What is the daily average revenue of all Sundays?

--Answer: 1410.65

select avg(total)  from 
(select sum(amount) as total,DATE(payment_date),EXTRACT(DOW FROM payment_date) AS day_of_week  from payment
 WHERE EXTRACT(dow from payment_date)=0
 group by day_of_week, DATE(payment_date) ) a



