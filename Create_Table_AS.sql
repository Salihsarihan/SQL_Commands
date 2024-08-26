CREATE TABLE customer_spendings
AS select CONCAT(c.first_name, ' ',c.last_name) AS 
       name, SUM(p.amount) as total_amount from payment p
       INNER JOIN customer c
       on p.customer_id = c.customer_id
       GROUP BY name


SELECT * FROM customer_spendings
WHERE name = 'RUSSELL BRINSON'