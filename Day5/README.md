## 📄 README.md — Day 5: Sales KPI Dashboard (Zoho Data Analyst Track)

### 📌 Project Overview

This mini project focuses on analyzing CRM sales performance using a sample dataset.
The goal is to calculate key business KPIs, visualize data through dashboards, and generate actionable insights for decision-making — aligned with Zoho Data Analyst expectations.

---

### 🧰 Tools Used

| Tool              | Purpose                                          |
| ----------------- | ------------------------------------------------ |
| **Excel**         | KPI calculation, charts, dashboard visualization |
| **SQL**           | KPI aggregation queries                          |
| **Documentation** | Business Insights reporting                      |

---

### 📊 Key Sales KPIs

| KPI           |     Value | Description                           |
| ------------- | --------: | ------------------------------------- |
| Total Revenue | ₹5,05,000 | Overall performance from closed deals |
| Total Deals   |        10 | Deals processed in pipeline           |
| Avg Deal Size |   ₹50,500 | Average revenue per deal              |
| Win Rate %    |       30% | Sales team closing efficiency         |

📍These KPIs are displayed as **Dashboard KPI Cards** inside the Excel file.

---

### 📈 Visual Dashboard Components

1️⃣ **Deals by Stage**
2️⃣ **Revenue by Salesperson**
3️⃣ **Sales Funnel Drop-off Chart**
4️⃣ **Revenue Trend Over Time**

📸 Screenshots of all charts and cards are included in the Excel file.

---

### 🧠 Business Insights (Data-Driven Recommendations)

> These insights help improve sales strategy and decision-making:

1. **Closed Won** deals generate most revenue, while **Leads** add minimal value — increasing qualified leads can grow revenue pipeline.
2. Major drop-offs occur at **Leads → Qualified** and **Proposal → Closed** stages — better qualification & negotiation strategies needed.
3. **Ravi** has lowest revenue contribution — targeted coaching and lead quality improvement recommended.
4. Highest revenue occurs mid-to-late month — early-pipeline acceleration can ensure stable month-long results.

---

### 📜 SQL Queries Used

```sql
SELECT COUNT(*) AS Total_Deals FROM Deals;

SELECT SUM(Amount) AS Total_Revenue FROM Deals;

SELECT AVG(Amount) AS Average_Deal_Value FROM Deals;

SELECT Stage, COUNT(*) AS Deal_Count
FROM Deals
GROUP BY Stage
ORDER BY Deal_Count DESC;

SELECT 
  (SUM(CASE WHEN Stage = 'Closed Won' THEN 1 ELSE 0 END) * 100.0 /
   COUNT(*)) AS Win_Rate_Percent
FROM Deals;
```

---

### 📁 Files Included

| File                              | Description                            |
| --------------------------------- | -------------------------------------- |
| **Day5_Sales_KPI_Dashboard.xlsx** | Full dashboard with charts & KPI cards |
| **README.md**                     | Documentation you are reading          |

---

### 🎯 Skills Demonstrated

✔ CRM Sales Analytics
✔ KPI Frameworks
✔ Excel Dashboard Design
✔ Business Insight Writing
✔ SQL Aggregation Queries
✔ Interview-oriented data storytelling

---


