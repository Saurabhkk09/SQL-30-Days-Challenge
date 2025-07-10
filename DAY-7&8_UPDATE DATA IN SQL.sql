--Drop the table if it is already exists

DROP TABLE IF EXISTS users;

--create the users table
CREATE TABLE IF NOT EXISTS users(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	age INT,
	city VARCHAR(50)
);

SELECT * FROM users;

--Insert 5 samples users into the users table
INSERT INTO users (username, email, age, city)
VALUES ('Saurabh', 'saurabhk0135@gmail.com', 22, 'ghaziabad'),
('komal', 'komal123@gmail.com', 25, 'Delhi'),
('Varsha', 'varsha123@gmail.com', 27, 'Jaipur'),
('sujata', 'sujata123@gmail.com', 42, 'Bihar'),
('Ramesh', 'ramesh123@gmail.com', '48', 'Mumbai')


SELECT user_id, username FROM users;


UPDATE users
SET age=26
WHERE username='komal';


SELECT * FROM users ORDER BY user_id ASC;

UPDATE users
SET age=21, city='kanpur'
WHERE username='Saurabh';


UPDATE users
SET age=age+1
WHERE email LIKE '%@gmail.com';
 