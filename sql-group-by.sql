USE employees;

SELECT COUNT(*), gender
FROM employees
GROUP BY gender;

SELECT COUNT(*), first_name
FROM employees
GROUP BY first_name
ORDER BY COUNT(*) desc;

SELECT AVG(DATEDIFF(hire_date, birth_date) / 365)
FROM employees;

SELECT MAX(DATEDIFF(hire_date, birth_date) / 365)
FROM employees;

SELECT MIN(DATEDIFF(hire_date, birth_date) / 365)
FROM employees;

SELECT DISTINCT title
FROM titles;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY last_name;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name, first_name;

SELECT COUNT(last_name), last_name FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name
ORDER BY last_name;

SELECT gender, COUNT(*) FROM employees;
