


CREATE TABLE employee2(
   employee_id INT PRIMARY KEY,
   name VARCHAR(100) NOT NULL,
   position VARCHAR(50),
   department VARCHAR(50),
   hire_date DATE,
   salary NUMERIC(10,2)
);

SELECT * FROM employee2;

INSERT INTO employee2(employee_id, name, position, department, hire_date, salary)
	VALUES(101, 'saurabh', 'Data analyst', 'Data science', '2025-07-02', 150000.00),
		(102, 'komal', 'SDE', 'SD', '2000-07-11', 200000.00),
		(103, 'varsha', 'HR manager', 'Human resource', '1997-01-04', 250000.00);


DELETE FROM employee2
WHERE employee_id=103;



ALTER TABLE employee2
DROP COLUMN salary;


DROP TABLE IF EXISTS employee3;

DROP DATABASE IF EXISTS company;
