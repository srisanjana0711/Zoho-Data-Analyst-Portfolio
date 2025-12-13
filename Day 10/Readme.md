# Day 10 – Advanced SQL & Zoho Analytics (Practical Work)

## 📌 Objective
To apply advanced SQL concepts in Zoho Analytics using Query Tables and build an analytical dashboard that supports business decision-making.

---

## 🛠 Tools & Technologies
- Zoho Analytics
- SQL (JOIN, CASE WHEN, Window Functions)
- Query Tables
- Dashboard & Charts

---

## 📂 Practical Work Completed

### 1️⃣ Query Table: Deal Categorization (CASE WHEN)

**Purpose:**  
Categorize deals into High, Medium, and Low value buckets to analyze revenue distribution.

**SQL Concepts Used:**
- INNER JOIN
- CASE WHEN logic
- Data enrichment through joins

**Output Fields:**
- Deal_ID  
- Region  
- Salesperson  
- Deal_Amount  
- Deal_Category (High / Medium / Low)

---

### 2️⃣ Query Table: Top Salesperson per Region (Window Function)

**Purpose:**  
Identify the top-performing salesperson in each region based on total revenue.

**SQL Concepts Used:**
- INNER JOIN
- Aggregation (SUM)
- Window Function: ROW_NUMBER()
- PARTITION BY (Region)

**Logic Applied:**
- Revenue aggregated per salesperson
- Ranked within each region
- Top performer selected using ROW_NUMBER = 1

---

## 📊 Dashboard & Visualizations

### Charts Created:
1. **Revenue Contribution by Deal Category**
   - Shows how High, Medium, and Low deal categories contribute to total revenue

2. **Top Salesperson by Region**
   - Displays the highest revenue-generating salesperson in each region

### KPI Tiles:
- Total Revenue
- Total Deals

---

## 🔍 Key Business Insights

- High and Medium value deals contribute the majority of total revenue, while Low value deals contribute the least.
- Arjun Verma is the top-performing salesperson in the South region, whereas performance improvement opportunities exist in other regions.

---

## 📄 Deliverables

- Query Tables created using advanced SQL
- Interactive dashboard built in Zoho Analytics
- Dashboard exported as PDF (`Day_10.pdf`)

---

## ✅ Status
Day 10 practical implementation completed successfully.
