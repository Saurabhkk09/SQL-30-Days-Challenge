SELECT * FROM employee3;


--Q1. Retrieve employees whose salary us between 40,000 and 60,000 - Use BETWEEN operators

SELECT first_name, last_name, salary FROM employee3
WHERE salary BETWEEN 40000 AND 60000;

--Q2. Find employees whose email address end with gmail.com -Use LIKE operators

SELECT first_name, last_name, email
FROM employee3
WHERE email LIKE '%gmail.com';

SELECT first_name FROM employee3
WHERE first_name LIKE 'J%';

--Q3. Retrieve employees who belong to either the 'Finance' or 'Marketing' department - Use IN operators

SELECT first_name, last_name, department
FROM employee3
WHERE department IN ('Finance', 'Marketing');
