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