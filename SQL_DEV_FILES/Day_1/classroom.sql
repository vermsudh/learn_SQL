create database college;

use college; 

CREATE TABLE student (
	id INT PRIMARY KEY,
    name varchar(50),
    age INT NOT NULL
);
INSERT INTO student VALUES(1, "Sudhanshu", 25);
INSERT INTO student VALUES(2, "Sudhanshu", 25);

select * FROM student;