-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT
);

-- Insert data into employees table
INSERT INTO employees (emp_id, emp_name, dept_id) VALUES
(1, 'John', 1),
(2, 'Alice', 2),
(3, 'Bob', 1),
(4, 'Emily', 3);

-- Create departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Insert data into departments table
INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT');

-- Inner Join example
SELECT employees.emp_id, employees.emp_name, departments.dept_name
FROM employees
INNER JOIN departments ON employees.dept_id = departments.dept_id;

-- Natural Join example
SELECT emp_id, emp_name, dept_name
FROM employees
NATURAL JOIN departments;

-- Left Join example
SELECT employees.emp_id, employees.emp_name, departments.dept_name
FROM employees
LEFT JOIN departments ON employees.dept_id = departments.dept_id;

-- Right Join example
SELECT employees.emp_id, employees.emp_name, departments.dept_name
FROM employees
RIGHT JOIN departments ON employees.dept_id = departments.dept_id;