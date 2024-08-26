--Question 11:
--Level: Difficult to very difficult
--Topic: Correlated subquery
--Task: Create a list of movies - with their length and their replacement cost - that are longer than the average length in each replacement cost group.
--Question: Which two movies are the shortest on that list and how long are they?
--Answer: CELEBRITY HORN and SEATTLE EXPECTATIONS with 110 minutes.

select length, title  from film f1
 where length > (select avg(length) as avg_length from film f2 
				 where f1.replacement_cost = f2.replacement_cost
						   group by replacement_cost)
ORDER BY length ASC

