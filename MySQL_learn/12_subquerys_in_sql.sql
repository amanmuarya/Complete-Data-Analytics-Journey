USE ecom;

select * from orders 
where price_per_unit > (
   select avg(price_per_unit) from orders ) ;  
   
   
   -- Subquery with IN
SELECT *
FROM orders
WHERE city IN (
    SELECT city
    FROM orders
    WHERE category = 'Electronics'
);   
   
-- Subquery in SELECT

SELECT order_id,
       customer_name,
       price_per_unit,
       (SELECT AVG(price_per_unit) FROM orders) AS avg_price
FROM orders;

-- Subquery with EXISTS

SELECT *
FROM orders o
WHERE EXISTS (
    SELECT 1
    FROM orders
    WHERE city = o.city
      AND category = 'Furniture'
);