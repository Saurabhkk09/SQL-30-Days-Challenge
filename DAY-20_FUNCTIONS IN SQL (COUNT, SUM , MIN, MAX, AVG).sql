DROP TABLE IF EXISTS products;
CREATE TABLE products(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100),
	category VARCHAR(50),
	price NUMERIC (10, 2),
	quantity INT,
	added_date DATE,
	discount_rate NUMERIC(5, 2)
	
);

INSERT INTO products(product_name, category, price, quantity, added_date, discount_rate)
VALUES ('Laptop', 'electronics', 75000.50, 10, '2024-01-15', 10.00),
	('Smartphone', 'electronics', 45000.99, 25, '2024-02-20', 5.00),
	('Headphones', 'accessories', 1500.75, 50, '2024-03-05', 15.00),
	('Office chair', 'furniture', 5500.00, 20, '2023-12-01', 20.00),
	('Desk', 'furniture', 8000.00, 15, '2023-11-20', 12.00),
	('Monitor', 'electronics', 12000.00, 8, '2024-01-10', 8.00),
	('Printer', 'electronics', 9500.50, 5, '2024-02-01', 7.50),
	('Mouse', 'accessories', 750.00, 40, '2024-03-18', 10.00),
	('Keyboard', 'accessories', 1250.00, 35, '2024-03-18', 10.00),
	('Tablet', 'electronics', 30000.00, 12, '2024-02-28', 5.00);

SELECT * FROM products


--Total quantity available of all products

SELECT SUM(quantity) AS total_quantity
FROM products;


SELECT SUM(quantity) AS quantiy_of_electronic
FROM products
WHERE category='electronics' AND price > 20000;


--Total number of products

SELECT COUNT(*) AS total_product
FROM products;


--Count with conditions

SELECT COUNT(*) AS total_product
FROM products
WHERE product_name LIKE '%phone%';

--Average price of the product

SELECT AVG(price) AS avg_price
FROM products;

--Average price of the product with conditions

SELECT AVG(price) AS avg_price
FROM products
WHERE category='accessories' OR added_date > '2024-02-01';


--Maximum and Minimum price

SELECT MAX(price) AS MAX_PRICE,
MIN(price) AS MIN_PRICE
FROM products;


	