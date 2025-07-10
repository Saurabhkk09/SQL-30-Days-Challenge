SELECT * FROM products;


/* 1. CASE Function - Categorizing based on conditions
we will categorize products into price ranges:

Expensive if the price is greater than or equal to 50,000.
Moderate if the price is between 10,000 and 49,999.
Affordable if the price is less than 10,000. */

SELECT product_name, price,
 CASE
 WHEN price>=50000 THEN 'Expensive'
 WHEN price>=10000 AND price<=49999 THEN 'Moderate'
 ELSE 'Affordable'
 END AS price_category
 FROM products;




/* 2. CASE with AND & OR Operators - Stock Status
we will classify products based on quantity available:

In stock if quantity is 10 or more.
Limited Stock if quantity is between 5 and 9.
Out of stock soon if quantity is less than 5.
*/
 SELECT product_name, quantity,
 	CASE
	WHEN quantity>=10 THEN 'In Stock'
	WHEN quantity BETWEEN 5 AND 9 THEN 'Limited Stock'
	ELSE 'Out of Stock'
END AS stock_status
FROM products;


/* 3. CASE with LIKE operator - Category Classification
Check if the category name contains "Electronics" or "furniture" using LIKE.
*/


SELECT product_name, category,
  CASE 
  WHEN category LIKE 'electronics%' THEN 'electronic Item'
  WHEN category LIKE 'furniture%' THEN 'Furniture Item'
  ELSE 'Accessory Item'
  END AS category_status
 FROM products;