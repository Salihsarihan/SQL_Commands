CREATE TABLE online_sales (
    transcation_id SERIAL PRIMARY KEY, 
    customer_id INT REFERENCES customer(customer_id),
    film_id INT REFERENCES film(film_id),
    amount NUMERIC(5, 2) NOT NULL CHECK (amount >= 0.00 AND amount <= 999.99),
    promotion_code VARCHAR(10) DEFAULT 'None'
);

INSERT INTO online_sales 
VALUES (1,124,65,14.99,'PROMO2022'),
       (2,225,231,12.99,'JULYPROMO'),
       (3,119,53,15.99,'SUMMERDEAL20220')