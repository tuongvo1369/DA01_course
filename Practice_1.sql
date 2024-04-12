--1) Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA
select NAME
from CITY
where POPULATION > 120000
AND COUNTRYCODE = 'USA'
-- 2) Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN'
-- 3) Query a list of CITY and STATE from the STATION table where LAT_N is the northern latitude and LONG_W is the western longitude.
-- 4) Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION 
WHERE CITY LIKE 'A%'
OR CITY LIKE 'E%'
OR CITY LIKE 'I%'
OR CITY LIKE 'O%'
OR CITY LIKE 'U%'
--5) Query the list of CITY names not starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION 
WHERE CITY NOT LIKE 'A%'
AND CITY NOT LIKE 'E%'
AND CITY NOT LIKE 'I%'
AND CITY NOT LIKE 'O%'
AND CITY NOT LIKE 'U%'
--6) Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT name
FROM Employee
ORDER BY name
--7) Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2000 dollars per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
SELECT name
FROM Employee
WHERE salary >2000
AND months <10
ORDER BY employee_id
--8) Write a solution to find the ids of products that are both low fat and recyclable. Return the result table in any order.
SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y'
--9) Find the names of the customer that are not referred by the customer with id = 2. Return the result table in any order.
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL
/*10) A country is big if:
it has an area of at least three million (i.e., 3000000 km2), or
it has a population of at least twenty-five million (i.e., 25000000).
Write a solution to find the name, population, and area of the big countries. Return the result table in any order*/
SELECT name, population, area
FROM World
WHERE area >=3000000 OR population >=25000000 
--11) Write a solution to find all the authors that viewed at least one of their own articles. Return the result table sorted by id in ascending order.
SELECT DISTINCT (author_id) as id
FROM Views
WHERE author_id = viewer_id
ORDER BY id
/*12) Tesla is investigating production bottlenecks and they need your help to extract the relevant data. Write a query to determine which parts have begun the assembly process but are not yet finished.
Assumptions:
parts_assembly table contains all parts currently in production, each at varying stages of the assembly process.
An unfinished part is one that lacks a finish_date*/
SELECT part FROM parts_assembly
WHERE finish_date IS NULL
--13) 




