-- Creating the databse 
CREATE DATABASE xyz;

-- This will help use to use the database
use xyz;

-- Creating a table with the three cols.
create table employee_info(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    SALARY INT
);

Select * from employee_info;

-- To insert the values in the table.
insert into employee_info (id, name, salary) 
	values
		(1, "adam", 500000),
		(2, "bob", 30000 ),
		(3, "casey", 40000 );

-- This will help us to view the table and its data
Select * from employee_info;

insert into employee_info values (1, "adam", 25000);

update employee_info
set salary = 25000
where id = 1;
-- Practice question from chat GPT. 



-- ✅ Question 1: Student Database
-- Create a database named school_db.
-- Create a table students with:
-- student_id (Primary Key)
-- name (VARCHAR 50)
-- age (INT)
-- Insert the following records:
-- 1, "Amit", 20
-- 2, "Sara", 19
-- 3, "John", 21


create database school_db; 
use school_db;

create table students(
	student_id int primary key,
    name varchar(50),
    age int
);

insert INTO students (student_id, name, age)
values
	(1, "Amit", 20),
    (2, "Sara", "21"),
    (3, "John", 21);

drop database school_db;


-- Question 2: Product Database
-- Create a database named store_db.
-- Create a table products with:
-- product_id (Primary Key)
-- product_name
-- price
-- Insert:
-- 101, "Laptop", 75000
-- 102, "Mouse", 500
-- 103, "Keyboard", 1500

create database store_db;
use store_db;

create table products (
	product_id int primary key,
    product_name varchar(50),
    price int
);

insert into products(product_id, product_name, price) 
	values
		(101, "Laptop", 75000),
        (102, "Mouse", 500),
        (103, "Keyboard", 1500);
drop database if exists store_db;

-- 🟡 Easy–Medium Level
-- ✅ Question 3: Employee Management
-- Create database company_db.
-- Create table employees:
-- emp_id (Primary Key)
-- emp_name
-- department
-- salary
-- Insert at least 5 employees from different departments.

create database library_db;
use library_db;

create table books (
	book_id int primary key,
    title varchar(50),
    author varchar(50),
    price int, 
    published_year int
);

drop database library_db;
    
    



