CREATE DATABASE COLLEGE_2;
use college_2;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student(id, name)
VALUES 
(101, "adam"),
(102, "stacy"),
(103, "Shrush");


CREATE TABLE course(
	id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course(id, course)
VALUES
(102, "english"),
(105, "maths"),
(103, "phy"),
(107, "chem"),
(101, "bio");

-- Lets practice INNER JOIN NOW.


SELECT * FROM student;
SELECT * FROM course;

SELECT * 
FROM student 
INNER JOIN course 
ON student.id = course.id;

-- We can also use alias

SELECT * 
FROM student as s 
INNER JOIN course as c
ON s.id = c.id;


-- FULL JOIN

SELECT * 
FROM student as a
LEFT JOIN course as b
ON a.id = b.id
UNION 
SELECT *
FROM student as b 
RIGHT JOIN course as a 
ON a.id = b.id;

-- LEFT EXCLUSIVE JOIN

SELECT * 
FROM student as a
LEFT JOIN course as b
ON a.id = b.id
WHERE b.id IS NULL;

-- RIGHT EXCLUSIVE JOIN


-- SELF JOIN 




USE college;

CREATE TABLE employee ( 	
	id INT PRIMARY KEY, 
	name VARCHAR (50), 
	manager_id INT
);

INSERT INTO employee (id, name, manager_id)
VALUES
(101, "adam", 103), 
(102, "bob", 104),
(103, "casey", NULL), 
(104, "donald", 103);

--
SELECT * FROM employee;

SELECT a.name as manager_name , b.name as emplyee_name
FROM employee as a
JOIN employee as b 
ON a.id = b. manager_id;

--

-- UNIONS 

SELECT name FROM employee
UNION
SELECT name FROM employee;

-- UNION ALL will provide duplicate the name

SELECT name FROM employee
UNION ALL
SELECT name FROM employee;














