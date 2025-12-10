-- ==========================================
-- DAY 7 SQL PRACTICE – FUNDAMENTALS + GROUP BY
-- ==========================================

-- SAMPLE TABLE (FOR REFERENCE)
-- Employees(EmpID, Name, Department, Salary, City)

---------------------------------------------------
-- 1️⃣ BASIC SELECT QUERIES
---------------------------------------------------

-- Select all columns
SELECT * FROM Employees;

-- Select specific columns
SELECT Name, Salary FROM Employees;

-- Select Name and City
SELECT Name, City FROM Employees;

---------------------------------------------------
-- 2️⃣ USING WHERE
---------------------------------------------------

-- Employees from HR
SELECT * 
FROM Employees
WHERE Department = 'HR';

-- Employees with salary > 50,000
SELECT Name, Salary
FROM Employees
WHERE Salary > 50000;

-- Sales employees in Chennai
SELECT *
FROM Employees
WHERE Department = 'Sales' AND City = 'Chennai';

---------------------------------------------------
-- 3️⃣ ORDER BY
---------------------------------------------------

-- Sort employees by Salary (ascending)
SELECT *
FROM Employees
ORDER BY Salary ASC;

-- Salary high → low
SELECT *
FROM Employees
ORDER BY Salary DESC;

---------------------------------------------------
-- 4️⃣ AGGREGATE FUNCTIONS
---------------------------------------------------

-- Total employees
SELECT COUNT(*) FROM Employees;

-- Total salary of all employees
SELECT SUM(Salary) FROM Employees;

-- Average salary
SELECT AVG(Salary) FROM Employees;

-- Highest and lowest salary
SELECT MAX(Salary), MIN(Salary)
FROM Employees;

---------------------------------------------------
-- 5️⃣ GROUP BY
---------------------------------------------------

-- Count employees per city
SELECT City, COUNT(*)
FROM Employees
GROUP BY City;

-- Total salary per department
SELECT Department, SUM(Salary)
FROM Employees
GROUP BY Department;

-- Average salary per department
SELECT Department, AVG(Salary)
FROM Employees
GROUP BY Department;

---------------------------------------------------
-- 6️⃣ HAVING
---------------------------------------------------

-- Cities with more than 1 employee
SELECT City, COUNT(*)
FROM Employees
GROUP BY City
HAVING COUNT(*) > 1;

-- Departments with salary > 100000
SELECT Department, SUM(Salary)
FROM Employees
GROUP BY Department
HAVING SUM(Salary) > 100000;

---------------------------------------------------
-- END OF DAY 7 SQL PRACTICE
---------------------------------------------------
