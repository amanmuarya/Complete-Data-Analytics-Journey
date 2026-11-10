USE ecom;

-- Basic ROLLUP Example

SELECT city,
       category,
       SUM(quantity * price_per_unit) AS total_sales
FROM orders
GROUP BY city, category WITH ROLLUP;


-- ROLLUP with Single Column

SELECT category,
       COUNT(*) AS total_orders
FROM orders
GROUP BY category WITH ROLLUP;

-- Identifying Total Rows

SELECT
    city,
    category,
    SUM(quantity * price_per_unit) AS total_sales
FROM orders
GROUP BY city, category WITH ROLLUP;


