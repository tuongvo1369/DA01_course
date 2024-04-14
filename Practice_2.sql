---1)Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT CITY
FROM STATION
WHERE CEILING (ID/2)=FLOOR(ID/2)
---2)Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
SELECT
COUNT(CITY)-COUNT(DISTINCT(CITY)) AS gap
FROM STATION
---3)Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.
Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.*/
SELECT Ceiling(AVG(Salary)-AVG(REPLACE(Salary, 0, ""))) AS error
FROM EMPLOYEES
---4) You're trying to find the mean number of items per order on Alibaba, rounded to 1 decimal place using tables which includes information on the count of items in each order (item_count table) and the corresponding number of orders for each item count (order_occurrences table).
SELECT
SUM(item_count*order_occurrences)/SUM(order_occurrences) AS mean
FROM items_per_order
---5)
