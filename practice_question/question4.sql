use xyz;

SELECT * from payment;

-- SQL Practice Questions – Payment Table
-- 1. Count Customers by City

-- Find the number of customers in each city.

-- Only display cities where the number of customers is greater than 1.

-- Sort the result by customer count in descending order.

SELECT count(*) as num_of_cust, city
FROM payment
GROUP BY city
HAVING count(*) > 1
ORDER BY count(*) DESC;

-- 2. Payment Modes Used in Each City

-- Display city and payment mode along with the number of customers using that mode.

-- Show only those combinations where the count is greater than 1.

-- Sort results by city name.

-- Concepts used:

-- GROUP BY multiple columns

-- HAVING

-- ORDER BY


SELECT city, mode, count(*) as num_of_cust
FROM payment
GROUP BY city, mode
HAVING num_of_cust > 1
ORDER BY city;

-- 3. Cities Using Credit Card

-- Find the number of customers in each city who used Credit Card.

-- Sort the results by city name.

-- Concepts used:


SELECT count(*) AS num_of_cust, city
FROM payment
WHERE mode = "Credit Card"
GROUP BY city
ORDER BY city;

-- 4) 

-- 4. Cities With Multiple Payment Modes

-- Find cities that use more than one payment mode.

-- Display:

-- city

-- number of different payment modes

-- Concepts used:

-- GROUP BY

-- COUNT(DISTINCT)

-- HAVING

SELECT city, COUNT(distinct mode) AS mode_count
FROM payment
GROUP BY city
HAVING COUNT(distinct mode)  > 1;


-- 5. Update Payment Mode Name

-- Some records contain "Credit Card".

-- Update them so that the value becomes:

-- CreditCard

-- Concepts used:

-- UPDATE

-- WHERE
SELECT * from payment;

SET SQL_SAFE_UPDATES = 0;

UPDATE payment 
SET mode='CreditCard'
WHERE mode='Credit Card';

-- 6. Update City Name

-- Update the city "New Orleans" to:

-- New_Orleans

UPDATE payment
set city='New_Orleans'
WHERE city='New Orleans';

DELETE FROM payment
WHERE mode='Netbanking';

INSERT INTO payment (customer_id, customer, mode, city)
VALUES
(101, 'Olivia Barrett', 'Netbanking', 'Portland'),
(104, 'Liam Donovan', 'Netbanking', 'Denver'),
(108, 'Lucas Carter', 'Netbanking', 'Boston'),
(109, 'Isabella Martinez', 'Netbanking', 'Nashville');

-- SQL ADVANCED QUESTION (INTERVIEW LEVEL)

-- 1. Cities With the Most Customers

-- Find the city that has the highest number of customers.

-- Return:

-- city

-- customer_count

SELECT * from payment;

SELECT city, count(*) AS customer_count
FROM payment
GROUP BY city
ORDER BY customer_count DESC
LIMIT 1;

-- Find the payment mode that is used by the highest number of customers.

-- Return:

-- mode

-- number_of_customers

SELECT mode, count(*) AS num_of_cust
FROM payment
GROUP BY mode
ORDER BY num_of_cust DESC
LIMIT 1;

-- Question 3

-- Find cities where customers use more than one payment mode.

-- Return:

-- city

-- number_of_modes

SELECT city, count(distinct mode) AS number_of_modes
FROM payment
GROUP BY city
HAVING number_of_modes > 1;


--  Question 4
-- Question 4

-- Update all records where the city is "Boston" and change the payment mode to:


UPDATE payment
SET mode='Online Banking'
WHERE city='Boston';

SELECT * from payment;


-- Question 5

-- Delete all records where the city appears only once in the table.

DELETE FROM payment
WHERE city IN (
	SELECT city
	FROM payment
	GROUP BY city
	HAVING COUNT(*)= 1
);







