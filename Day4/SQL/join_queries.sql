-- =========================================
-- Day 4 - CRM Revenue Dashboard (SQL Script)
-- Contains: schema, sample data, analysis queries
-- =========================================

-- 1. CREATE TABLES
-- -----------------------------------------

CREATE TABLE Leads (
    Lead_ID      VARCHAR(10) PRIMARY KEY,
    Lead_Name    VARCHAR(100),
    Email        VARCHAR(255),
    Region       VARCHAR(50)
);

CREATE TABLE Products (
    Product_ID   VARCHAR(10) PRIMARY KEY,
    Product_Name VARCHAR(100)
);

CREATE TABLE Salespersons (
    Salesperson_ID   VARCHAR(10) PRIMARY KEY,
    Salesperson_Name VARCHAR(100)
);

CREATE TABLE Deals (
    Deal_ID         VARCHAR(10) PRIMARY KEY,
    Lead_ID         VARCHAR(10),
    Product_ID      VARCHAR(10),
    Salesperson_ID  VARCHAR(10),
    Deal_Value      DECIMAL(12,2),
    CONSTRAINT fk_deals_lead
        FOREIGN KEY (Lead_ID) REFERENCES Leads(Lead_ID),
    CONSTRAINT fk_deals_product
        FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID),
    CONSTRAINT fk_deals_salesperson
        FOREIGN KEY (Salesperson_ID) REFERENCES Salespersons(Salesperson_ID)
);

-- 2. INSERT SAMPLE DATA
-- -----------------------------------------

-- Leads
INSERT INTO Leads (Lead_ID, Lead_Name, Email, Region) VALUES
('L001', 'Ram',   'ram@mail.com',   'South'),
('L002', 'Ankit', 'ankit@mail.com', 'West'),
('L003', 'Sita',  'sita@mail.com',  'North'),
('L004', 'Ravi',  'ravi@mail.com',  'East'),
('L005', 'Maya',  'maya@mail.com',  'South');

-- Products
INSERT INTO Products (Product_ID, Product_Name) VALUES
('P01', 'Laptop'),
('P02', 'Monitor'),
('P03', 'Keyboard'),
('P04', 'Mouse');

-- Salespersons
INSERT INTO Salespersons (Salesperson_ID, Salesperson_Name) VALUES
('S01', 'Priya'),
('S02', 'John'),
('S03', 'Divya'),
('S04', 'Karan');

-- Deals
INSERT INTO Deals (Deal_ID, Lead_ID, Product_ID, Salesperson_ID, Deal_Value) VALUES
('D101', 'L001', 'P01', 'S01', 10000),
('D102', 'L001', 'P02', 'S01', 15000),
('D103', 'L002', 'P01', 'S02',  5000),
('D104', 'L003', 'P03', 'S03',  8000),
('D105', 'L005', 'P02', 'S01', 12000);

-- 3. ANALYSIS QUERIES
-- -----------------------------------------
-- 3.1 Revenue by Region

SELECT
    l.Region,
    SUM(d.Deal_Value) AS Revenue
FROM Deals d
LEFT JOIN Leads l
    ON d.Lead_ID = l.Lead_ID
GROUP BY l.Region
ORDER BY Revenue DESC;

-- 3.2 Revenue by Product

SELECT
    p.Product_Name,
    SUM(d.Deal_Value) AS Revenue
FROM Deals d
LEFT JOIN Products p
    ON d.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Revenue DESC;

-- 3.3 Salesperson Performance

SELECT
    s.Salesperson_Name,
    SUM(d.Deal_Value) AS Revenue
FROM Deals d
INNER JOIN Salespersons s
    ON d.Salesperson_ID = s.Salesperson_ID
GROUP BY s.Salesperson_Name
ORDER BY Revenue DESC;

-- 3.4 Leads without any Deals

SELECT
    l.Lead_Name,
    l.Region
FROM Leads l
LEFT JOIN Deals d
    ON l.Lead_ID = d.Lead_ID
GROUP BY l.Lead_ID, l.Lead_Name, l.Region
HAVING SUM(d.Deal_Value) IS NULL;
