USE ecom;

-- UNION is used to combine results of multiple SELECT queries 
-- into a single result set.

CREATE TABLE employee_orders (
    order_id INT,
    name VARCHAR(100),
    city VARCHAR(50),
    product VARCHAR(100),
    price_per_unit DECIMAL(10,2)
);

-- Inserting Data into employee_orders

INSERT INTO employee_orders
VALUES
(201, 'Ravi Kumar', 'Delhi', 'Laptop', 62000),
(202, 'Sneha Patel', 'Mumbai', 'Headphones', 2300),
(203, 'Ankit Verma', 'Pune', 'Office Chair', 11000),
(204, 'Ananya Roy', 'Kolkata', 'Study Table', 15000);


-- Using UNION
SELECT order_id, customer_name AS name, city, product, price_per_unit
FROM orders

UNION

SELECT order_id, name, city, product, price_per_unit
FROM employee_orders;

-- Using UNION ALL

SELECT order_id, customer_name AS name, city, product, price_per_unit
FROM orders


-- UNION ALL

SELECT order_id, customer_name AS name, city, product, price_per_unit
FROM orders

UNION ALL

SELECT order_id, name, city, product, price_per_unit
FROM employee_orders;

