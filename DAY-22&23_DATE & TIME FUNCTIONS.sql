SELECT * FROM products;

--1. NOW() - Get current date and time

SELECT NOW() AS Current_datetime;

--2. CURRENT_DATE - Get current Date

SELECT CURRENT_DATE AS today_date;

SELECT Added_date, Current_Date, (CURRENT_DATE - added_date) AS DAYS_difference
FROM products;

--3. EXTRACT() - Extract parts of a date
-- Extract the year, month and day from the added_date column.

SELECT product_name,
 EXTRACT(YEAR FROM added_date) AS year_added,
  EXTRACT(MONTH FROM added_date) AS month_added,
 EXTRACT(DAY FROM added_date) AS day_added

 FROM products;

--4. AGE() - Calculate age between dates
-- Calculate the time difference between added_date and today's date.

SELECT product_name,
AGE(CURRENT_DATE, added_date) AS Age_since_added
FROM products;

--5. TO_CHAR() - Format Dates as strings
-- Format added_date in a custom format (DD-MM-YYYY)

SELECT product_name,
 TO_CHAR(added_date, 'DD-Mon-YYYY') AS FORMATTED_DATE
 FROM products;

--6. DATE_PART() - Get specific date part
-- Extract the day of the week from added_date

SELECT product_name, added_date,
DATE_PART('year', added_date) AS day_of_week
FROM products;

--7. DATE_TRUNC() - Truncate Date to precision.
-- Truncate added_date to the start of the month

SELECT product_name, added_date,
DATE_TRUNC ('week', added_date) AS month_start,
DATE_PART ('isodow', added_date) AS day_of_week

FROM products;

--8. INTERVAL - Add or Subtract time intervals.
-- Add 6 months to the added_date.

SELECT product_name, added_date,
 added_date + INTERVAL '6 months' AS new_date
FROM products;

--9. CURRENT_TIME() - Get current time
-- Retrieve only the current time.

SELECT CURRENT_TIME AS current_time;

--10. TO_DATE() - convert string to date.
-- Convert a string to a date format.

SELECT TO_DATE('28-11-2024', 'DD-MM-YYYY') AS converted_date;