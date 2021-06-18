USE codeup_test_db;

SELECT * FROM albums;
SELECT 'All Albums' AS 'Info';
SELECT name FROM albums WHERE release_date BETWEEN 0 AND 1980;
SELECT 'Albums before 1980' AS 'Info';
SELECT name FROM albums WHERE artist = 'Michael Jackson';
SELECT 'All Michael Jackson Albums' AS 'Info';

UPDATE albums
SET sales = sales * 10;

UPDATE albums
SET release_date = release_date - 100
WHERE release_date <= 1980;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
