USE codeup_test_db;

SELECT name AS 'All Pink Floyd albums' FROM albums WHERE artist = 'Pink Floyd';


SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT 'Release date of Sgt. Peppers Lonely Hearts Club Band' AS 'Info';
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';
SELECT 'Genre for the album Nevermind' AS 'Info';
SELECT genre FROM albums where name = 'Nevermind';
SELECT 'Albums from 1990 and 1999' AS 'Info';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT 'Albums with sales under 20 million' AS 'Info';
SELECT name FROM albums WHERE sales BETWEEN 0 AND 20;
SELECT 'All Rock Genre Albums' AS 'Info';
SELECT * FROM albums WHERE genre = 'Rock';
