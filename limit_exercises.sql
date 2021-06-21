USE employees;

SELECT *
FROM employees
WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, last_name
LIMIT 20 OFFSET 20;

SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;

SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5;

SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 45;
