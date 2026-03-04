
-- ✅ Question 1 – PRIMARY KEY + DEFAULT
-- Create a table named students with the following columns:
-- student_id → integer, should uniquely identify each student
-- name → varchar(50), cannot be NULL
-- course → varchar(50), default value should be 'BCA'
-- Tasks:
-- Add the appropriate constraint to make student_id unique.
-- Insert 3 records.
-- Try inserting two students with the same student_id. Observe what happens.

 use college;
 
 create table students(
	student_id int PRIMARY KEY,
    name varchar (50) NOT NULL,
    course VARCHAR(50) DEFAULT 'BCA'
 );

--  ALTER TABLE students
--  DROP COLUMN student_id;


-- ✅ Question 2 – CHECK Constraint
-- Create a table named products with:
-- product_id → integer
-- product_name → varchar(50)
-- price → integer (must be greater than 0)
-- Tasks:
-- Apply the correct constraint so price cannot be 0 or negative.
-- Insert one valid record.
-- Try inserting a product with a negative price.


create table products (
	product_id int,
    product_name varchar(50),
    price int CONSTRAINT price_check CHECK (price >0)
);


-- ✅ Question 3 – PRIMARY KEY + CHECK + DEFAULT
-- Create a table named employees with:
-- emp_id → integer
-- emp_name → varchar(50)
-- salary → integer (must be greater than or equal to 10000)
-- status → varchar(20), default value 'Active'
-- Tasks:
-- Add appropriate constraints.
-- Insert two employees (one without giving status).
-- Try inserting an employee with salary 5000.

create table employees(
	emp_id int PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT CONSTRAINT salary_limit CHECK (salary >= 10000),
    status varchar(20) DEFAULT 'Active'
);


-- ✅ Question 4 – FOREIGN KEY (Basic)
-- Create two tables:
-- departments
-- dept_id → integer
-- dept_name → varchar(50)
-- staff
-- staff_id → integer
-- staff_name → varchar(50)
-- dept_id → integer (should reference departments table)
-- Tasks:
-- Apply necessary primary key and foreign key constraints.
-- Insert at least 2 departments.
-- Insert staff members linked to departments.
-- Try inserting a staff member with a department that does not exist.

create table departments(
	dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

create table staff(
	staff_id int PRIMARY KEY,
    satff_name VARCHAR(50),
    dept_id INT,
	FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments (dept_id, dept_name)
	VALUES
	(101, 'IT'),
    (102, 'HR');

INSERT INTO staff (staff_id, staff_name, dept_id)
	VALUES
    (101, "Sudhanshu", '101'),
    (102, "Sid", '102');

--  ✅ Question 5 – All Constraints Together (Mini Practice)
-- Create two tables:
-- orders
-- order_id → integer
-- order_date → date (default should be current date)
-- order_items
-- item_id → integer
-- order_id → integer (should reference orders)
-- quantity → integer (must be greater than 0)
-- Tasks:
-- Apply PRIMARY KEY on both tables.
-- Add FOREIGN KEY in order_items.
-- Add CHECK constraint on quantity.
-- Insert valid and invalid records to test constraints.

create table orders(
	order_id int PRIMARY KEY,
    order_date date DEFAULT CURRENT_DATE
);

create table order_items(
	item_id int primary key,
    order_id int,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    quantity int constraint check_quantity check (quantity > 0)
);


 