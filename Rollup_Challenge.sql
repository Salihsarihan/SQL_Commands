select 
extract(quarter from book_date) as quarter,
extract(month from book_date) as month,
TO_CHAR(book_date,'w') as week,
DATE(book_date),
sum(total_amount)
from bookings
group by
rollup( 
	extract(quarter from book_date),
	extract(month from book_date),
	TO_CHAR(book_date,'w'),
	DATE(book_date))
order by 1,2,3

