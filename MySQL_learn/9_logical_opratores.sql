DROP DATABASE IF EXISTS ecom;

CREATE DATABASE ecom;

USE ecom;

-- IN is used to match a value against a list of values 

SELECT *
FROM orders
WHERE city IN ('Delhi', 'Mumbai', 'Bangalore');


-- NOT IN  


SELECT *
FROM orders
WHERE payment_mode NOT IN ('Cash', 'UPI');


-- Using BETWEEN and NOT BETWEEN
-- BETWEEN checks for values within a range and includes both ends.

SELECT *
FROM orders
WHERE price_per_unit BETWEEN 1000 AND 10000;


-- NOT BETWEEN
SELECT *
FROM orders
WHERE price_per_unit NOT BETWEEN 1000 AND 10000;


-- Using LIKE with Wildcards
-- LIKE is used for pattern matching in text.


-- % Wildcard
-- Matches any number of characters.

SELECT *
FROM orders
WHERE customer_name LIKE 'A%';


SELECT *
FROM orders
WHERE product LIKE '%Table%';


--   _ Wildcard
--    Matches exactly one character.

SELECT *
FROM orders
WHERE city LIKE 'D_lhi';


-- Combining Logical Conditions

SELECT *
FROM orders
WHERE category IN ('Electronics', 'Furniture')
AND price_per_unit NOT BETWEEN 5000 AND 20000;

--   Key Points
--   IN replaces multiple OR conditions
--   NOT BETWEEN filters values outside a range
--   % matches many characters
--   _ matches exactly one character