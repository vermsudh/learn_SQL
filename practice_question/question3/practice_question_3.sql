
-- 1. Operators (Filtering Data)

-- Question:
-- Write a query to display all customers who are from Boston or Miami.

-- Concepts used:

-- WHERE

-- OR operator

-- ANSWER 1
use xyz;

CREATE TABLE payment (
    customer_id INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(20),
    city VARCHAR(30)
);

INSERT INTO payment (customer_id, customer, mode, city) VALUES
(101, 'Olivia Barrett', 'Netbanking', 'Portland'),
(102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
(103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
(104, 'Liam Donovan', 'Netbanking', 'Denver'),
(105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
(106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
(107, 'Ava Patel', 'Debit Card', 'Phoenix'),
(108, 'Lucas Carter', 'Netbanking', 'Boston'),
(109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
(110, 'Jackson Brooks', 'Credit Card', 'Boston');

SELECT customer
FROM payment 
WHERE city = "BOSTON" OR city ="MIAMI";


-- 2. Operators with Conditions

-- Question:
-- Retrieve the details of customers whose customer_id is greater than 105.

-- Concepts used:

-- Comparison operator (>)
-- ANSWER 2: 

SELECT customer_id
FROM payment 
WHERE customer_id > 105;

-- 3. GROUP BY + Aggregate Function

-- Question:
-- Find the number of customers in each city.

-- Concepts used:

-- COUNT()

-- GROUP BY

SELECT count(customer), CITY
FROM PAYMENT
GROUP BY CITY;

-- Your query:

-- SELECT COUNT(customer), city
-- FROM payment
-- GROUP BY city;
-- What this query does

-- COUNT(customer)
-- Counts the number of customers in each group.

-- GROUP BY city
-- Groups all rows that have the same city.

-- The result will show how many customers belong to each city.

-- Example output (conceptually):

-- city	count(customer)
-- Boston	2
-- Miami	1
-- Seattle	1
-- Phoenix	1

-- 4. GROUP BY + ORDER BY

-- Question:
-- Find the number of customers using each payment mode and display the result sorted by the number of customers in descending order.

-- Concepts used:

-- COUNT()

-- GROUP BY

-- ORDER BY

-- Answer 4:

SELECT MODE,COUNT(CUSTOMER)
FROM PAYMENT 
GROUP BY mode
ORDER BY COUNT(CUSTOMER) DESC;

-- 5. Aggregate Function + ORDER BY

-- Question:
-- Find the maximum customer_id for each payment mode and order the result by customer_id in descending order.

-- Concepts used:

-- MAX()

-- GROUP BY

-- ORDER BY

SELECT MAX(customer_id), mode
FROM PAYMENT
GROUP BY mode
ORDER BY MAX(customer_id) DESC;

SELECT * FROM payment;

SELECT MODE, MAX(customer)
FROM PAYMENT 
GROUP BY MODE
ORDER BY MAX(customer) desc;

-- Find how many customers belong to each city.

SELECT count(*), CITY
FROM PAYMENT 
GROUP BY city;

-- Show the number of customers using each payment method, but display the result starting from the highest count to the lowest.

SELECT COUNT(CUSTOMER), MODE
FROM PAYMENT 
GROUP BY MODE
ORDER BY COUNT(CUSTOMER) DESC;

SELECT mode, count(*) AS total_customer
FROM PAYMENT 
GROUP BY MODE
ORDER BY COUNT(*) DESC;

-- 3

-- Display all records where the payment method is Credit Card and the customer lives in Boston.

SELECT *
FROM PAYMENT
WHERE mode = 'Credit Card' AND city = 'Boston';

-- 4

-- Find the highest customer_id for every payment method.

SELECT mode, MAX(customer_id) AS max_customer_id
FROM PAYMENT
GROUP BY MODE
ORDER BY max_customer_id;

-- 5

-- List the cities that have more than one customer in the table.

SELECT city, count(*) AS num_of_cust
FROM payment 
GROUP BY city
HAVING num_of_cust > 1;

-- 6

-- Display the total number of customers in the table.

SELECT COUNT(*) AS total_customer
FROM payment;

-- 7

-- Find the number of different payment methods available in the table.

SELECT mode as num_of_mode
FROM payment
GROUP BY mode;

-- 8

-- Display all customers whose customer_id is between 103 and 108.

SELECT customer, customer_id
FROM payment 
WHERE customer_id >= 103 AND customer_id <= 108;

SELECT customer, customer_id
FROM payment 
WHERE customer_id BETWEEN 103 AND 108;

-- 9

-- Find the city that appears the most in the table.

SELECT count(*), city
FROM payment 
GROUP BY city
ORDER BY count(*) DESC
LIMIT 1;


-- Explanation

-- 1. COUNT(*)
-- Counts how many rows belong to each city.

-- 2. GROUP BY city
-- Groups all records by city so the count is calculated per city.

-- 3. ORDER BY city_count DESC
-- Sorts the result so the city with the highest count comes first.

-- 4. LIMIT 1
-- Returns only the top city, which appears the most.


-- 10

-- Display the payment methods used by customers in Boston, without repeating the same method multiple times.

select distinct mode
from payment 
where city='Boston';

--  MORE QUESTIONS FROM YT VIDEO

-- Write a query to find avg marks in each city in ascending order.

use college; 

SELECT AVG(marks), city
from student
GROUP BY city
ORDER BY AVG(marks) DESC;

-- 

-- FInd the total payment according to each payment method

use xyz;

SELECT mode, count(customer) as total_customer
from payment 
GROUP BY mode;


--


use college;

SELECT * from student;

SELECT grade, count(rollno)
FROM student
GROUP BY grade
ORDER BY grade;



