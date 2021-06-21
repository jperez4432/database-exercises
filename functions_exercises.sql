USE employees;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE first_name = 'Maya'
ORDER BY last_name;

SELECT hire_date
FROM employees
WHERE first_name = 'Maya';

SELECT DAYOFMONTH(hire_date)
FROM employees
WHERE first_name = 'Maya'
ORDER BY DAYOFMONTH(hire_date);

SELECT MONTH(hire_date)
FROM employees
WHERE first_name = 'Maya'
ORDER BY MONTH(hire_date);

SELECT YEAR(hire_date)
FROM employees
WHERE first_name = 'Maya'
ORDER BY YEAR(hire_date);

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e';

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY DATE(birth_date), DATE(hire_date) DESC;

    SELECT DATEDIFF(now(), hire_date)
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;
