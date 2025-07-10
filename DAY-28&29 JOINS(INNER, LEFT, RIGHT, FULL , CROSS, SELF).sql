/* TYPES OF JOINS:-
1. INNER JOIN - Common Matches
2. LEFT JOIN (LEFT OUTER JOIN)
3. RIGHT JOIN (RIGHT OUTER JOIN)
4. FULL JOIN (FULL OUTER JOIN)
5. CROSS JOIN
6. SELF JOIN
*/

CREATE TABLE employee4 (
	 employee_id SERIAL PRIMARY KEY,
	 first_name VARCHAR(50),
	 last_name VARCHAR(50),
	 department_id INT
);

INSERT INTO employee4 (first_name, last_name, department_id)
VALUES ('Rahul', 'sharma', 101),
('Priya', 'mehta', 102),
('Ankit', 'verma', 103),
('Simran', 'kaur', NULL),
('Aman', 'singh', 101);

SELECT * FROM employee4;


CREATE TABLE departments (
	department_id INT PRIMARY KEY,
	department_name VARCHAR(50)
);

INSERT INTO departments (department_id, department_name)
VALUES (101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');

SELECT * FROM departments;


--INNER JOIN
SELECT e.employee_id, e.first_name, e.last_name, 
d.department_name, d.department_id
FROM employee4 e

INNER JOIN 
departments d
ON e.department_id = d.department_id;



--LEFT JOIN
SELECT e.employee_id, e.first_name, e.last_name, 
d.department_name, d.department_id
FROM employee4 e

LEFT JOIN 
departments d
ON e.department_id = d.department_id;

--RIGHT JOIN
SELECT e.employee_id, e.first_name, e.last_name, 
d.department_name, d.department_id
FROM employee4 e

RIGHT JOIN 
departments d
ON e.department_id = d.department_id;


--FULL OUTER JOIN 
SELECT e.employee_id, e.first_name, e.last_name, 
d.department_name, d.department_id
FROM employee4 e

FULL OUTER JOIN 
departments d
ON e.department_id = d.department_id;


--CROSS JOIN
SELECT e.first_name, e.last_name, 
d.department_name
FROM employee4 e

CROSS JOIN 
departments d



--SELF JOIN
SELECT e1.first_name AS employee_name1,
 	e2.first_name AS employee_name2,
	 d.department_name
FROM employee4 e1 JOIN employee4 e2
ON e1.department_id = e2.department_id AND e1.employee_id!=e2.employee_id
JOIN 
departments d
ON 
e1.department_id = d.department_id;


