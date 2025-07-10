SELECT * FROM employee;

INSERT INTO employee(name, position, department, hire_date, salary)
	VALUES('saurabh', 'Data analyst', 'Data science', '2025-07-02', 150000.00),
		('komal', 'SDE', 'SD', '2000-07-11', 200000.00),
		('varsha', 'HR manager', 'Human resource', '1997-01-04', 250000.00);

TRUNCATE TABLE employee;

TRUNCATE TABLE employee RESTART IDENTITY;