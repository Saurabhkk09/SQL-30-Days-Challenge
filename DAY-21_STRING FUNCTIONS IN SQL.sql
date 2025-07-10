SELECT * FROM products;


-- Get all the categories in Uppercase

SELECT UPPER(category) AS category_Capital
FROM products;

-- Get all the categories in Lowercase

SELECT LOWER(category) AS category_Capital
FROM products;

-- Join Product_name and category text with hypen.

SELECT CONCAT(product_name, '-',category) AS product_details
FROM products;

-- Extract the first five characters from product_name

SELECT SUBSTRING(product_name, 2,5) AS short_name
FROM products;

-- Count Length

SELECT product_name, LENGTH(product_name) AS Count_of_characters
FROM products;

-- Remove leading and trailing spaces from string

SELECT LENGTH (TRIM(' Monitor          ')) AS Trim_text;
SELECT LENGTH (' Monitor          ') AS Trim_text;


-- Replace the word "Phone" with "Device" in product_names

SELECT REPLACE(product_name, 'phone','device') AS updated
FROM products;


-- Get the first 3 characters from category

SELECT LEFT(category,3) AS category_Capital
FROM products;




