# USE employees;
#
# SELECT * FROM employees WHERE birth_date LIKE '1954-01%';
#
# SELECT * FROM employees WHERE birth_date LIKE '1954-01%'
# ORDER BY birth_date;
#
# SELECT * FROM employees WHERE birth_date LIKE '1954-01%'
# ORDER BY birth_date, last_name;
# SELECT * FROM employees WHERE birth_date LIKE '1954-01%'
# ORDER BY birth_date, hire_date;

USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

-- SELECT first_name FROM employees WHERE first_name = 'Irena' OR 'Vidya' OR 'Maya';
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;




SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no;

SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no DESC;