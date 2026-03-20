                    SQL SUB QUERY

![img.png](img.png)

![img_1.png](img_1.png)

            SUB QUERY using in FROM

![img_2.png](img_2.png)

-- SUB Query using in FROM. 

SELECT MAX(marks)

FROM (SELECT * 

FROM student1

WHERE city = 'Delhi') AS temp;

            SUB QUERY in SELECT
![img_3.png](img_3.png)