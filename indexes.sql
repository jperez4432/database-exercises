USE employees;

SHOW INDEXES FROM employees;

SHOW INDEXES FROM departments;

SELECT salary FROM salaries
WHERE salary BETWEEN 50000 AND 70000;

ALTER TABLE salaries ADD INDEX salary_index(salary);

USE codeup_test_db;

CREATE TABLE quotes(
    ID INT NOT NULL AUTO_INCREMENT,
    content VARCHAR(240) NOT NULL,
    author VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE quotes ADD UNIQUE (content);

# INSERT INTO quotes VALUES (content, author)
# VALUES ('IM READY!', 'Spongebob Squarepants');

USE employees;
DROP INDEX salary_index ON salaries;

USE codeup_test_db;

ALTER TABLE albums ADD UNIQUE  unique_artist_and_name (artist, name);
ALTER TABLE albums DROP INDEX unique_artist_and_name;