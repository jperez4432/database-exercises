USE codeup_test_db;
SELECT 'Deleting albums before 1991' AS 'Info';
DELETE FROM albums WHERE release_date BETWEEN 0 AND 1991;
SELECT 'Deleting disco albums' AS 'Info';
DELETE FROM albums WHERE genre = 'Disco';
SELECT 'Deleting albums by Whitney Houston' AS 'Info';
DELETE FROM albums WHERE artist = 'Whitney Houston';
