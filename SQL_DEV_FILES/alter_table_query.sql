use college;

ALTER TABLE student
ADD COLUMN age INT;

SELECT * FROM student;

ALTER TABLE student
DROP COLUMN age;

-- ADD COL
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

-- MODIFY 
ALTER TABLE student
MODIFY age VARCHAR(2);

-- CHANGE
ALTER TABLE student
CHANGE age stu_age INT;

-- DROP Col
ALTER TABLE student
DROP COLUMN stu_age;

-- RENAME Table
ALTER TABLE student 
RENAME TO stu;
