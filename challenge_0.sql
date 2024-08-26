SELECT 
CASE 
WHEN replacement_cost BETWEEN 9.99 AND 19.99
THEN 'low'
WHEN replacement_cost BETWEEN 20 AND 24.99
THEN 'medium'
ELSE 'high'
END as cost_range,
COUNT(*)
FROM film
GROUP BY cost_range