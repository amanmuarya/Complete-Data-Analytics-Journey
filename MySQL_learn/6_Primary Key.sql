CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(150) UNIQUE,
    name VARCHAR(100) NOT NULL
);

INSERT INTO employees (email, name)
VALUES ('amit@company.com', 'Amit Sharma');


ALTER TABLE employees
ADD PRIMARY KEY (email);

SELECT * FROM employees;

