/*Window Function perform calculations across a set of table rows related to the current row.
They are useful of ranking, calculating running totals, percentages and much more. */


SELECT * FROM products;

--Assign a unique row number to each product within the same category.

SELECT product_name, category, price,
	ROW_NUMBER() OVER(PARTITION BY category ORDER BY price DESC) AS row_num
FROM products;

-- we can use DENSE_RANK , RANK in place of ROW_NUMBER. 


SELECT product_name, category, price,
	SUM(price) OVER(PARTITION BY category ORDER BY price ASC) AS running_total
FROM products;

