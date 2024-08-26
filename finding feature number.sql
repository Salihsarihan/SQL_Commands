SELECT COUNT(*)
FROM film
WHERE 'Behind the Scenes' = ANY(special_features);

