CREATE DATABASE join_practice;
USE join_practice;


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department_id INT
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE salaries (
    emp_id INT,
    salary INT
);

INSERT INTO employees (emp_id, emp_name, department_id) VALUES
(1, 'Rahul', 101),
(2, 'Sneha', 102),
(3, 'Amit', 103),
(4, 'Priya', NULL),
(5, 'Karan', 104),
(6, 'Meera', 105);

INSERT INTO departments (department_id, department_name) VALUES
(101, 'HR'),
(102, 'Finance'),
(103, 'IT'),
(106, 'Marketing'),
(107, 'Operations');

INSERT INTO salaries (emp_id, salary) VALUES
(1, 50000),
(2, 60000),
(3, 70000),
(7, 80000);

-- | emp_id | emp_name | department_id |
-- | ------ | -------- | ------------- |
-- | 1      | Rahul    | 101           |
-- | 2      | Sneha    | 102           |
-- | 3      | Amit     | 103           |
-- | 4      | Priya    | NULL          |
-- | 5      | Karan    | 104           |
-- | 6      | Meera    | 105           |


-- | department_id | department_name |
-- | ------------- | --------------- |
-- | 101           | HR              |
-- | 102           | Finance         |
-- | 103           | IT              |
-- | 106           | Marketing       |
-- | 107           | Operations      |

-- | emp_id | salary |
-- | ------ | ------ |
-- | 1      | 50000  |
-- | 2      | 60000  |
-- | 3      | 70000  |
-- | 7      | 80000  |

-- Q1
-- Display employee name and department name for employees whose department exists.

SELECT e.emp_name, d.department_name
FROM employees as e
INNER JOIN departments as d
ON e.department_id = d.department_id;



-- Q2
-- Display all employees with their department names.
-- If an employee does not belong to any department, still show them.

SELECT e.emp_name, d.department_name
FROM employees as e
LEFT JOIN departments as d
ON e.department_id = d.department_id;

-- Q3
-- Display all departments and the employees working in them.

SELECT d.department_name, e.emp_name
FROM departments as d
LEFT JOIN employees as e 
ON e.department_id = d.department_id;

-- Q4
-- Display all employees and departments, even if they do not match.

SELECT e.emp_name, d.department_name
FROM employees as e
LEFT JOIN departments as d
ON e.department_id = d.department_id

UNION 

SELECT e.emp_name, d.department_name
FROM departments as d
LEFT JOIN employees as e
ON e.department_id = d.department_id;


-- Q5
-- Display employees who are not assigned to any department.

SELECT e.emp_name, d.department_name
FROM employees as e
LEFT JOIN departments as d
ON e.department_id = d.department_id
WHERE d.department_id is NULL;

-- Q6
-- Display departments that have no employees.

SELECT d.department_name, e.emp_name
FROM departments as d
LEFT JOIN employees as e
ON e.department_id = d.department_id
WHERE e.department_id is NULL; 

-- Q7
-- Display employees with their salary where salary information exists.

SELECT e.emp_name, s.salary
FROM employees as e
INNER JOIN salaries as s
ON e.emp_id = s.emp_id;

-- Q8
-- Display all employees with salary information, even if salary does not exist.

SELECT e.emp_name, s.salary
FROM employees as e
LEFT JOIN salaries as s
ON e.emp_id = s.emp_id;

-- Q9
-- Display salary records that do not belong to any employee.

SELECT s.salary, e.emp_name
FROM salaries as s
LEFT JOIN employees as e
ON e.emp_id = s.emp_id
WHERE e.emp_name is NULL;

-- Q10
-- Display employee name, department name, and salary using all three tables.


SELECT e.emp_name, d.department_name, s.salary
FROM employees as e
LEFT JOIN departments as d 
ON e.department_id = d.department_id
LEFT JOIN salaries as s 
ON s.emp_id = e.emp_id;

-- ------------------------------------


























