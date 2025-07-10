DROP TABLE IF EXISTS students_2023;
CREATE TABLE students_2023(
	student_id INT PRIMARY KEY,
	student_name VARCHAR(50),
	course VARCHAR(50)
);

INSERT INTO students_2023 (student_id, student_name, course)
VALUES (1, 'Aarav sharma', 'Computer science'),
(2, 'Ishita verma', 'Mechanical engineering'),
(3, 'Kabir patel', 'electronics'),
(4, 'Ananya desai', 'Civil engineering'),
(5, 'Rahul gupta', 'Computer science');

SELECT * FROM students_2023;


DROP TABLE IF EXISTS students_2024;
CREATE TABLE students_2024(
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

INSERT INTO students_2024 (student_id, student_name, course)
VALUES (3, 'Kabir patel', 'electronics'),
(4, 'Ananya desai', 'Civil engineering'),
(6, 'Meera rao', 'Computer science'),
(7, 'Vikram singh', 'Mathematics'),
(8, 'Sanya kapoor', 'Physics');


SELECT * FROM students_2024;



--UNION --Combines results, removes duplicates

SELECT student_name, course FROM students_2023
UNION
SELECT student_name, course FROM students_2024;

--UNION ALL --Combines results, keeps duplicates

SELECT student_name, course FROM students_2023
UNION ALL 
SELECT student_name, course FROM students_2024;

--INTERSECT --Returns common results in both tables

SELECT student_name, course FROM students_2023
INTERSECT
SELECT student_name, course FROM students_2024;

--EXCEPT --Returns results in the first tablr but not in the second


SELECT student_name, course FROM students_2023
EXCEPT
SELECT student_name, course FROM students_2024;