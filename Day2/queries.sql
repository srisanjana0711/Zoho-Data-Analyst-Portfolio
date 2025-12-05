-- Q1: Display all sales data
SELECT * FROM Sales;

-- Q2: Show customer names and city only
SELECT CustomerName, City FROM Sales;

-- Q3: Sales with Amount greater than 30000
SELECT * FROM Sales
WHERE Amount > 30000;

-- Q4: Sort sales by Amount (High to Low)
SELECT * FROM Sales
ORDER BY Amount DESC;

-- Q5: Count number of sales transactions
SELECT COUNT(*) FROM Sales;
