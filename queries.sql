-- Query 1: Total sales by region
SELECT "Region", ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Region"
ORDER BY total_sales DESC;

-- Query 2: Total sales by category
SELECT "Category", ROUND(SUM("Sales"), 2) AS total_sales
FROM orders
GROUP BY "Category"
ORDER BY total_sales DESC;

-- Query 3: Top 10 customers by revenue
SELECT "Customer Name", ROUND(SUM("Sales"), 2) AS total_spent
FROM orders
GROUP BY "Customer Name"
ORDER BY total_spent DESC
LIMIT 10;

-- Query 4: Month-over-month sales trend
SELECT
  substr("Order Date", -4) AS order_year,
  CAST(substr("Order Date", 1, instr("Order Date",'/')-1) AS INTEGER) AS order_month,
  ROUND(SUM("Sales"), 2) AS monthly_sales
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

-- Query 5: Profit margin by category
SELECT 
  "Category",
  ROUND(SUM("Sales"), 2) AS total_sales,
  ROUND(SUM("Profit"), 2) AS total_profit,
  ROUND(SUM("Profit") * 100.0 / SUM("Sales"), 2) AS profit_margin_pct
FROM orders
GROUP BY "Category"
ORDER BY profit_margin_pct DESC;

-- Query 6: Create customers reference table
CREATE TABLE customers AS
SELECT DISTINCT "Customer ID", "Customer Name", "Segment", "Region"
FROM orders;

-- Query 7: Top customers by spend, with segment (JOIN)
SELECT o."Customer ID", c."Customer Name", c."Segment", ROUND(SUM(o."Sales"),2) AS total_sales
FROM orders o
JOIN customers c ON o."Customer ID" = c."Customer ID"
GROUP BY o."Customer ID", c."Customer Name", c."Segment"
ORDER BY total_sales DESC
LIMIT 10;

-- Query 8: Customer spend ranking (window function)
SELECT
  "Customer Name",
  ROUND(SUM("Sales"), 2) AS total_spent,
  RANK() OVER (ORDER BY SUM("Sales") DESC) AS spend_rank
FROM orders
GROUP BY "Customer Name"
ORDER BY spend_rank
LIMIT 20;