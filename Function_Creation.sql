CREATE FUNCTION count_rr (min_r decimal(4,2), max_r decimal(4,2))
RETURNS INT
LANGUAGE plpgsql
AS
$$
DECLARE
movie_count INT;
BEGIN
SELECT COUNT(*)
INTO movie_count
FROM film
WHERE rental_rate BETWEEN min_r AND max_r;
RETURN movie_count;
END;
$$

SELECT count_rr(2,6)
