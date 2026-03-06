use college;

SELECT city, count(name)
FROM student
GROUP BY city;