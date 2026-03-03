create database IF NOT EXISTS college;

use college; 

CREATE TABLE student (
	id INT PRIMARY KEY,
    name varchar(50),
    age INT NOT NULL
);
INSERT INTO student VALUES(1, "Sudhanshu", 25);
INSERT INTO student VALUES(2, "Sudhanshu", 25);
INSERT INTO student VALUES(3, "Sid", 25);

select * FROM student;

SHOW DATABASES;
SHOW TABLES;

drop table student;

create table student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

insert into student(rollno, name) 
	values 
		(101, 'Sudhanshu'),
        (102, 'Karan');

select * from student;