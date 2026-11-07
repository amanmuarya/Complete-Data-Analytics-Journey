select * from orders ; 

UPDATE orders
SET order_status = 'Delivered'
WHERE order_id = 10;

UPDATE orders
SET discount_percent = 10,
    rating = 4
WHERE customer_name = 'Neha Verma';

UPDATE orders
SET order_status = 'Cancelled'
WHERE order_status = 'Pending';


UPDATE orders
SET discount_percent = 20
WHERE category = 'Electronics' AND price_per_unit > 30000;

SELECT *
FROM orders
WHERE order_status = 'Pending';


DELETE FROM orders
WHERE order_id = 5;

DELETE FROM orders
WHERE order_status = 'Cancelled';

DELETE FROM orders
WHERE order_date < '2025-01-10';


SELECT *
FROM orders
WHERE order_status = 'Cancelled';

DELETE FROM orders;

