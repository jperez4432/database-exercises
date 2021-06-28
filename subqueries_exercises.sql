USE employees;

SELECT *
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM
        employees
    WHERE emp_no = 101010
);

SELECT title FROM titles WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');
SELECT DISTINCT title FROM titles WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

SELECT first_name, last_name FROM employees WHERE emp_no IN (SELECT emp_no FROM dept_manager WHERE to_date LIKE '9999%') AND gender = 'F';

# using NOW()
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
) AND gender = 'F';

SELECT dept_name FROM departments WHERE dept_no IN (SELECT dept_no FROM dept_manager WHERE emp_no IN (SELECT emp_no FROM employees WHERE gender = 'F') AND to_date > NOW());

SELECT first_name, last_name FROM employees WHERE emp_no = (SELECT emp_no FROM salaries WHERE salary = (SELECT MAX(salary) FROM salaries));
