                KEYS

Primary KEY: IT is a column (or set of columns) in a table that uniquely identifies each row
(a unique id)

There is only 1 PK and it should not be null

Foreign Key:
A foreign key is a column (or set of columns) in a table 
that refers to the primary key;
There can be multiple Fk's 
Fk.s can have duplicate and null values. 

![img_16.png](../../screenshots/img_16.png)


--------

🔑 Primary Key & Foreign Key in SQL

1️⃣ Primary Key

A Primary Key is a column (or combination of columns) that uniquely identifies each record in a table.

✔️ Rules of Primary Key:

Must contain unique values

Cannot contain NULL

Only one primary key per table

Can be single column or composite (multiple columns)

| student_id | name  | age |
| ---------- | ----- | --- |
| 1          | Amit  | 20  |
| 2          | Priya | 21  |
| 3          | Rahul | 19  |

Here, student_id is the Primary Key because:

Every student has a unique ID

No duplicates

No NULL values

-------

2️⃣ Foreign Key

A Foreign Key is a column that creates a relationship between two tables.

It refers to the Primary Key of another table.

✔️ Purpose:

Maintains referential integrity

Prevents invalid data

Links tables together

📌 Example: orders Table linked to students

Students Table (Parent Table)

| student_id | name  |
| ---------- | ----- |
| 1          | Amit  |
| 2          | Priya |

Orders Table (Child Table)

| order_id | student_id | course_name |
| -------- | ---------- | ----------- |
| 101      | 1          | SQL         |
| 102      | 2          | Python      |


Here:
student_id in students → Primary Key

student_id in orders → Foreign Key

It ensures that:

You cannot insert a student_id in orders that doesn't exist in students.

