INSERT INTO customers (name, email, city, sign_up_date) VALUES
('Amit Sharma','amit@gmail.com','Delhi','2025-01-01'),
('Neha Verma','neha@gmail.com','Mumbai','2025-01-02'),
('Rahul Khan','rahul@gmail.com','Bangalore','2025-01-03'),
('Pooja Nair','pooja@gmail.com','Chennai','2025-01-04'),
('Rohit Gupta','rohit@gmail.com','Delhi','2025-01-05'),
('Ananya Roy','ananya@gmail.com','Kolkata','2025-01-06'),
('Karan Mehta','karan@gmail.com','Ahmedabad','2025-01-07'),
('Simran Kaur','simran@gmail.com','Chandigarh','2025-01-08'),
('Mohit Jain','mohit@gmail.com','Jaipur','2025-01-09'),
('Sneha Patel','sneha@gmail.com','Surat','2025-01-10'),
('Vikram Singh','vikram@gmail.com','Lucknow','2025-01-11'),
('Alok Mishra','alok@gmail.com','Patna','2025-01-12'),
('Nidhi Agarwal','nidhi@gmail.com','Noida','2025-01-13'),
('Saurabh Verma','saurabh@gmail.com','Ghaziabad','2025-01-14'),
('Riya Sen','riya@gmail.com','Pune','2025-01-15'),
('Aditya Malhotra','aditya@gmail.com','Delhi','2025-01-16'),
('Kritika Shah','kritika@gmail.com','Mumbai','2025-01-17'),
('Yash Tiwari','yash@gmail.com','Kanpur','2025-01-18'),
('Mehul Joshi','mehul@gmail.com','Vadodara','2025-01-19'),
('Isha Kapoor','isha@gmail.com','Gurgaon','2025-01-20');



INSERT INTO products (product_name, category, price, stocks) VALUES
('Python Hoodie','Clothing',1999,50),
('Java Hoodie','Clothing',1899,40),
('Debugging Mug','Accessories',599,100),
('Code Like a Pro Mug','Accessories',649,80),
('DSA Notebook','Stationery',499,150),
('SQL Cheat Sheet','Stationery',299,200),
('Sticker Pack','Stationery',249,300),
('Algorithm T-Shirt','Clothing',1499,60),
('GitHub Cap','Accessories',799,70),
('Keyboard Mat','Accessories',999,90),
('Linux Hoodie','Clothing',2099,35),
('AI Nerd T-Shirt','Clothing',1599,55),
('Whiteboard Notebook','Stationery',699,120),
('Bug Hunter Mug','Accessories',549,100),
('Terminal Stickers','Stationery',199,250),
('Coder Bottle','Accessories',899,110),
('Late Night Hoodie','Clothing',2199,30),
('Python Socks','Accessories',399,140),
('DSA Flash Cards','Stationery',349,180),
('Clean Code Notebook','Stationery',599,130);



SELECT * FROM customers;

SELECT * FROM products;

SELECT * FROM orders;

SELECT * FROM order_items;

SELECT * FROM payments;


-- practicw

SELECT p.product_name,
       SUM(oi.quantity * p.price) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.order_status = 'Delivered'
GROUP BY p.product_name
ORDER BY revenue DESC;


SELECT c.name,
       SUM(p.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.name
ORDER BY total_spent DESC;



SELECT p.product_name,
       SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;



SELECT COUNT(*) AS cancelled_orders
FROM orders
WHERE order_status = 'Cancelled';