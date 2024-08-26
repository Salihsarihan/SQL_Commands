UPDATE film
SET rental_rate = 1.99
WHERE rental_rate = 0.99

SELECT * FROM customer
ALTER TABLE customer
ADD COLUMN initials VARCHAR(10);

UPDATE customer
SET initials = UPPER(SUBSTRING(first_name FROM 1 FOR 1)) || '.' || UPPER(SUBSTRING(last_name FROM 1 FOR 1)) || '.';

