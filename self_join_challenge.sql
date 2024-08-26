select f1.title,f2.title, f2.length from film f1
inner join film f2
on f1.length = f2.length
