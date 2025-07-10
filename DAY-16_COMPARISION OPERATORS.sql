SELECT * FROM employee3;


--Using AND operators
SELECT * FROM employee3
WHERE age>=60 AND salary >=90000;


--Using OR operators
SELECT * FROM employee3
WHERE age>=60 OR salary >=90000;


--Using NOT operator
SELECT * FROM employee3
WHERE NOT (department='IT');

