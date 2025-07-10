SELECT * FROM employee3;

--Match age 30
SELECT * FROM employee3
WHERE age=30;


--matches all except 30
SELECT first_name, age FROM employee3
WHERE age!=30;

--Salary greater than 50000
SELECT first_name, salary FROM employee3
WHERE salary>50000;