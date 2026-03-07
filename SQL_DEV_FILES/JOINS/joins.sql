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
















