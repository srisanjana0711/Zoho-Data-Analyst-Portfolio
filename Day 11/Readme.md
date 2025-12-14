

# 📊 Zoho Analytics – KPI & Revenue Analysis Dashboard (Day-11)

## 📌 Project Overview

This project demonstrates **end-to-end KPI creation, aggregation logic, and dashboard design** using **Zoho Analytics**.
The focus is on **correct KPI computation**, **avoiding aggregation errors**, and **presenting business-ready insights** for sales performance analysis.

The dashboard is designed to answer:

* How well is the sales team converting deals?
* How is revenue trending over time?
* Which salesperson is performing best and why?

---

## 🧠 Key Concepts Applied

* Calculated Fields vs Query Tables
* Row-level vs Aggregate-level logic
* KPI validation (Win Rate, Avg Deal Value)
* Monthly revenue and growth analysis
* Salesperson performance comparison

---

## 🛠 Tools & Technologies

* **Zoho Analytics**
* SQL (Query Table)
* Calculated Fields
* KPI Widgets
* Dashboard & Visual Analytics

---

## 📂 Dataset Used

**Table:** `Deals`

Key columns:

* Deal_ID
* Salesperson_ID
* Deal_Stage
* Deal_Amount
* Close_Date

---

## 🧮 KPI Logic Implemented

### 1️⃣ Win Flag (Calculated Field)

```text
IF(Deal_Stage = 'Won', 1, 0)
```

### 2️⃣ Win Rate (%)

```text
(SUM(Win Flag) / COUNT(Deal_ID)) * 100
```

### 3️⃣ Average Deal Value

```text
SUM(Deal_Amount) / COUNT(Deal_ID)
```

---

## 🧾 KPI Query Table (Salesperson-wise)

To avoid aggregation ambiguity and mixed granularity issues, a **Query Table** was used.

### SQL Used:

```sql
SELECT
    Salesperson_ID,
    COUNT(Deal_ID) AS Total_Deals,
    SUM(flag) AS Won_Deals,
    ROUND(SUM(flag) * 100.0 / COUNT(Deal_ID), 2) AS Win_Rate_Percent,
    ROUND(AVG(Deal_Amount), 2) AS Avg_Deal_Value,
    SUM(Deal_Amount) AS Total_Revenue
FROM Deals
GROUP BY Salesperson_ID
ORDER BY Total_Revenue DESC;
```

This ensures:

* One row per salesperson
* Clean KPI calculation
* Reusable metrics across reports

---

## 📊 Dashboard Components

### ✔ KPI Cards

* Win Rate (%)
* Average Deal Value

### ✔ Trend Analysis

* Monthly Revenue Trend (₹)
* Revenue Growth % (Month-over-Month)

### ✔ KPI Table

* Salesperson-wise performance summary
* Total Deals
* Won Deals
* Win Rate %
* Avg Deal Value
* Total Revenue

---

## 📈 Key Business Insights

1. **Top Performer:**
   Salesperson **S001** generated the highest revenue (₹1.23L) with a strong win rate of 66.67%, indicating both high volume and good conversion.

2. **Efficiency vs Scale:**
   Salesperson **S004** achieved a 100% win rate but with lower total revenue, suggesting excellent conversion but limited deal volume.

3. **Risk Area:**
   Salespersons **S002 and S003** recorded 0% win rate despite active deals, highlighting pipeline quality or sales execution issues.

---

## 📁 Repository Structure

```text
Day-11/
│
├── dashboard.pdf          # Final Zoho Analytics dashboard export
├── README.md              # Project documentation
└── notes.md (optional)    # Learning notes & interview prep
```
---
