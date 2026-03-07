use college; 

-- To delete the data from the Table, you can use TRUNCATE TABLE. 
TRUNCATE TABLE student;

-- PRACTICE QUESTION

-- Change the name of column "name" to full_name
ALTER TABLE student
CHANGE name full_name VARCHAR(50);

SELECT * FROM STUDENT;

-- Delete all the students who scored marks less than 80.
DELETE FROM STUDENT
WHERE marks < 80;
 
 -- Delete the column for grades.
 ALTER TABLE student
 DROP COLUMN grade;
 
 