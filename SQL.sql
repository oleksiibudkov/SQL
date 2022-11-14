show databases;
use hogwarts;
show tables from hogwarts;
select * from characters;
select * from library;
SELECT lname,fname,patronus from characters WHERE patronus IS NOT NULL;
SELECT lname from characters WHERE lname LIKE "%e";
SELECT SUM(age) from characters;
SELECT fname,lname,age FROM characters ORDER BY age DESC;
SELECT fname,lname FROM characters WHERE age BETWEEN 50 AND 100;
SELECT DISTINCT age FROM characters;
SELECT * from characters WHERE faculty = "Gryffindor" AND age > 30;
SELECT DISTINCT faculty FROM characters LIMIT 3;
SELECT fname from characters WHERE fname LIKE "H____" OR fname LIKE "L%";
SELECT AVG(age) from characters;
DELETE from characters WHERE char_id = 11;
SELECT lname from characters WHERE lname LIKE "%a%";
SELECT "Severus" AS "Half-Blood Prince" from characters;
SELECT char_id,patronus from characters WHERE patronus IS NOT NULL ORDER BY patronus;
SELECT fname,lname FROM characters WHERE lname IN ("Crabbe", "Diggory", "Granger");
SELECT MIN(age) from characters;
SELECT fname FROM characters UNION SELECT book_name from library;
SELECT COUNT(char_id), faculty from characters Group By faculty Having COUNT(faculty) > 1 ORDER BY COUNT(char_ID) DESC;
SELECT fname,lname,
CASE
    WHEN faculty = "Gryffindor" THEN "Godric"
    WHEN faculty = "Slytherin" THEN "Salazar"
    WHEN faculty = "Ravenclaw" THEN "Rovena"
    WHEN faculty = "Hufflepuff" THEN "Helga"
    ELSE "Muggle"
    END AS "Founders"
    FROM characters;
SELECT * FROM characters WHERE lname NOT REGEXP "^[LSH]";
SELECT characters.lname, characters.fname, library.book_name FROM characters JOIN library ON characters.char_id = library.char_id;
SELECT characters.lname, characters.fname, library.book_name FROM characters LEFT JOIN library ON characters.book_id = library.book_id;
SELECT characters.patronus, library.book_name FROM characters JOIN library ON characters.char_id = library.char_id;
SELECT characters.fname, characters.lname, characters.age, library.book_name FROM characters 
JOIN library ON characters.char_id = library.char_id WHERE age IN (SELECT age FROM characters WHERE age >15);
SELECT characters.fname, characters.lname, library.start_date, library.book_name, library.end_date FROM characters 
JOIN library ON characters.char_id = library.char_id WHERE age IN (SELECT age FROM characters WHERE age <15 AND patronus = "Unknown");
SELECT COUNT(book_name) FROM library WHERE end_date IN (SELECT end_date FROM library WHERE end_date > "2022-12-20");
SELECT patronus FROM characters WHERE age IN (SELECT age FROM characters WHERE age > 14);


 










