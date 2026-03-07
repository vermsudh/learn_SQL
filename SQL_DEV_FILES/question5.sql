use xyz;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    department VARCHAR(30),
    salary INT,
    hire_date DATE
);

INSERT INTO employees (emp_id, first_name, last_name, department, salary, hire_date) VALUES
(101, 'Rahul', 'Sharma', 'HR', 45000, '2022-01-15'),
(102, 'Anita', 'Verma', 'Finance', 60000, '2021-07-21'),
(103, 'Karan', 'Mehta', 'IT', 75000, '2020-03-11'),
(104, 'Sneha', 'Kapoor', 'Marketing', 52000, '2023-02-10'),
(105, 'Rohit', 'Singh', 'IT', 68000, '2019-11-01');

-- Interview-Level Practice Questions


-- Question 1 — ADD Column
-- Add a new column email with datatype VARCHAR(100) to the employees table.

ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

SELECT * FROM employees;

-- Question 2 — MODIFY Column

-- The company decides that salaries may exceed the current limit.
-- Modify the salary column to store larger values.

ALTER TABLE employees
MODIFY salary BIGINT;

-- Question 3 — CHANGE Column

-- Rename the column first_name to fname and ensure the datatype remains the same.

ALTER TABLE employees
CHANGE first_name fname VARCHAR(40);

-- Question 4 — RENAME Table

-- Rename the table employees to company_employees.

ALTER TABLE employees
RENAME TO company_employees;

-- Question 5 — DROP Column

-- The management decides the hire_date column is no longer required.
-- Remove this column from the table.

ALTER TABLE company_employees
DROP COLUMN hire_date;

-- Question 6 — ADD Multiple Columns

-- Add two new columns:

-- phone_number → VARCHAR(15)

-- address → VARCHAR(120)


ALTER TABLE company_employees
ADD COLUMN phone_number VARCHAR(15), 
ADD COLUMN address VARCHAR(120);

-- Question 7 — TRUNCATE

-- Delete all data from the table instantly while keeping the table structure intact.

TRUNCATE TABLE company_employees;
