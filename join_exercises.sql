# THIS IS FOR THE JOIN EXAMPLE DATABASE PORTION
USE join_test_db;

INSERT INTO users (name, email, role_id) VALUES
('Jake', 'jake@example.com', 2),
('Clark', 'clark@example.com', 2),
('Neim', 'neim@example.com', 2),
('Sandra', 'sandra@example.com', null);

SELECT u.name, r.name FROM users u JOIN roles r on u.role_id = r.id;

SELECT u.name, r.name FROM roles r LEFT JOIN users u on r.id = u.role_id;

SELECT u.name, r.name FROM roles r RIGHT JOIN users u on r.id = u.role_id;

# EMPLOYEES DATABASE EXAMPLE
USE employees;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;


SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
         LEFT JOIN dept_manager dm
                   ON d.dept_no = dm.dept_no
         JOIN employees e on e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;


# Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
         LEFT JOIN dept_manager dm
                   ON d.dept_no = dm.dept_no
         JOIN employees e ON e.emp_no = dm.emp_no
WHERE (dm.to_date = '9999-01-01' AND e.gender = 'F')
ORDER BY d.dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title AS title, COUNT(*) AS Total
FROM titles
         JOIN dept_emp de ON titles.emp_no = de.emp_no
         JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service' AND titles.to_date = '9999-01-01'
GROUP BY title;

#Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary AS Salary
FROM departments d
         LEFT JOIN dept_manager dm
                   ON d.dept_no = dm.dept_no
         JOIN employees e ON e.emp_no = dm.emp_no
         JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name .
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee,
       d.dept_name AS Department,
       CONCAT(e2.first_name, ' ', e2.last_name) AS Manager
FROM employees e
         LEFT JOIN departments d on e.emp_no = d.emp_no

