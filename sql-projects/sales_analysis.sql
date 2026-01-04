-- Sales Analysis using SQL

-- View all data
SELECT * FROM sales;

-- Total sales per country
SELECT country, SUM(quantity * price) AS total_sales
FROM sales
GROUP BY country;

-- Revenue by product
SELECT product, SUM(quantity * price) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;

-- Category-wise sales
SELECT category, SUM(quantity * price) AS category_sales
FROM sales
GROUP BY category;

-- Orders per country
SELECT country, COUNT(order_id) AS total_orders
FROM sales
GROUP BY country;
