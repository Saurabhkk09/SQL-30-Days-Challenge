SELECT * FROM employee3;


--Q1. Find employees where the email column is NULL (if applicable).

SELECT first_name, last_name, email
FROM employee3
WHERE email IS NULL;

--Q2. List employees sorted by salary in DESCENDING order.

SELECT salary FROM employee3 ORDER BY salary DESC;


--Q3. Retrieve the top 5 highest-paid employees.


SELECT first_name, last_name, salary
FROM employee3
ORDER BY salary DESC
LIMIT 5;


--Q4. Retrieve a list of unique departments.

SELECT COUNT (DISTINCT department) AS Dept_UNIQUE_COUNT
FROM employee3;

