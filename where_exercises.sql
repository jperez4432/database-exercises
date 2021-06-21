USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');
-- SELECT first_name FROM employees WHERE first_name = 'Irena' OR 'Vidya' OR 'Maya';
SELECT *
FROM employees
WHERE last_name LIKE 'e%';
SELECT *
FROM employees
WHERE last_name LIKE '%q%';


SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';


SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

SELECT * FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya')
       AND gender = 'M';

 SELECT * FROM employees
 WHERE last_name LIKE 'e%'
    OR last_name LIKE '%e';

SELECT *
FROM employees
WHERE last_name LIKE 'e%e';

SELECT * FROM employees
WHERE last_name LIKE '%q%'
  AND NOT last_name LIKE '%qu%';