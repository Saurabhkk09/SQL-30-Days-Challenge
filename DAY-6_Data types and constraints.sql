DROP TABLE IF EXISTS users;
CREATE TABLE users (
	user_id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE,
	age INTEGER CHECK (age >= 18),
	reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	
);

INSERT INTO users (user_id, name, email, age)
	VALUES(1, 'SAURABH', 'saurabhk0135@gmail.com', 22);

SELECT * FROM users;