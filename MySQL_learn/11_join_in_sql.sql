USE ecom;

SELECT *
FROM orders ;

-- JOINs are used to combine data from multiple tables based on a related column.


-- INNER JOIN
SELECT 
    o.order_id,
    o.product,
    o.city AS customer_city,
    s.seller_name
FROM orders o
INNER JOIN sellers s
ON o.seller_id = s.seller_id;

-- LEFT JOIN

SELECT 
    o.order_id,
    o.product,
    s.seller_name
FROM orders o
LEFT JOIN sellers s
ON o.seller_id = s.seller_id;


-- RIGHT JOIN

SELECT 
    s.seller_name,
    o.order_id,
    o.product
FROM orders o
RIGHT JOIN sellers s
ON o.seller_id = s.seller_id;

-- JOIN with WHERE Condition

SELECT 
    o.order_id,
    o.product,
    s.seller_name
FROM orders o
JOIN sellers s
ON o.seller_id = s.seller_id
WHERE o.order_status = 'Delivered';

-- JOIN with Aggregation-- 

SELECT 
    s.seller_name,
    COUNT(o.order_id) AS total_orders
FROM sellers s
LEFT JOIN orders o
ON s.seller_id = o.seller_id
GROUP BY s.seller_name;



