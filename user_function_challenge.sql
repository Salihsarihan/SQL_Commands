CREATE OR REPLACE FUNCTION name_searchhh (firstname VARCHAR(20), lastname VARCHAR(20))
RETURNS decimal(6,2)
LANGUAGE plpgsql
AS
$$
DECLARE
total_amount decimal(6,2);
BEGIN
SELECT sum(amount)
INTO total_amount
FROM payment 
NATURAL LEFT JOIN customer 
WHERE firstname = first_name and lastname = last_name;
RETURN total_amount;
END;
$$

SELECT first_name, last_name,name_searchhh(first_name,last_name)
from customer


