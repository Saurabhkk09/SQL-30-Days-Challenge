DROP TABLE IF EXISTS employee3;

CREATE TABLE employee3(
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	department VARCHAR(50),
	salary NUMERIC(10, 2),
	joining_date DATE,
	age INT
);

SELECT * FROM employee3;
