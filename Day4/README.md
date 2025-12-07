
## 📊 Day 4 — CRM Revenue Dashboard (Zoho Data Analyst Track)

### 🔹 Objective

Analyze CRM Deals data to understand **revenue distribution** across regions, products, and sales representatives using:

* SQL Joins
* Excel Pivot Tables
* Zoho Analytics Dashboards
* Business Interpretation & Insights

---

## 🧩 Dataset Overview

| Table   | Key Fields                               | Purpose            |
| ------- | ---------------------------------------- | ------------------ |
| Leads   | Lead_ID, Lead_Name, Region               | Customer geography |
| Deals   | Deal_ID, Lead_ID, Product_ID, Deal_Value | Transaction facts  |
| Product | Product_ID, Product_Name                 | Product mapping    |
| Sales   | Salesperson_ID, Salesperson_Name         | Sales workforce    |

All datasets are connected using **Primary–Foreign Key Relationships**.

---

## 🔗 Data Model (Lookup Relationships)

Relationships created in Zoho Analytics:

* Deal → Lead using Lead_ID
* Deal → Product using Product_ID
* Deal → Sales using Salesperson_ID

📌 Creates automatic JOIN behavior during reporting

<img width="2008" height="1184" alt="image" src="https://github.com/user-attachments/assets/81c35726-d9ec-4d4f-b5f0-10da1f026d31" />


---

## 🧠 SQL Queries Used

```sql
-- Revenue by Region
SELECT l.Region, SUM(d.Deal_Value) AS Revenue
FROM Deals d
LEFT JOIN Leads l ON d.Lead_ID = l.Lead_ID
GROUP BY l.Region;

-- Revenue by Product
SELECT p.Product_Name, SUM(d.Deal_Value) AS Revenue
FROM Deals d
LEFT JOIN Products p ON d.Product_ID = p.Product_ID
GROUP BY p.Product_Name;

-- Salesperson Performance
SELECT s.Salesperson_Name, SUM(d.Deal_Value) AS Revenue
FROM Deals d
INNER JOIN Sales s ON d.Salesperson_ID = s.Salesperson_ID
GROUP BY s.Salesperson_Name;
```

---

## 📈 Dashboards & Analytics

### Revenue by Region

South region dominates revenue contribution (~74%)
North and West underperforming
➡ Sales expansion needed in East & West

![Revenue by Region]<img width="477" height="334" alt="image" src="https://github.com/user-attachments/assets/cef705ea-7c3f-473c-87b6-3a71cb89ea4f" />


---

### Revenue by Product

Monitor generates more than half of total revenue
Keyboard sales lowest
➡ Bundle promotions recommended

![Revenue by Product]<img width="700" height="333" alt="image" src="https://github.com/user-attachments/assets/19ce103e-8224-45ec-88c1-88f840788189" />


---

### Salesperson Performance

Priya delivers highest revenue
John requires support & coaching
➡ Incentives + training strategy

![Salesperson Performance] <img width="463" height="325" alt="image" src="https://github.com/user-attachments/assets/b0f96a29-5b8f-48c4-aa0f-a7c59bbe3a80" />


---

## 🎤 Business Recommendations

* **Strengthen weak markets**: Launch campaigns in East & West
* **Promote low-selling products**: Bundle keyboards with high-performing monitors
* **Support sales team**: Share best practices from high performers

> These insights help improve both **conversion rate** and **revenue balance**

---

## 🛠 Tools Used

| Tool           | Usage                          |
| -------------- | ------------------------------ |
| SQL            | Data joining & revenue queries |
| Excel          | Cleaning, pivots, charts       |
| Zoho Analytics | Dashboard creation             |
| GitHub         | Portfolio publishing           |

---

## 🏁 Outcome

This mini-project showcases **end-to-end Data Analyst capability**:

✔ Data preparation
✔ Data modeling
✔ Visualization
✔ KPI storytelling
✔ Business thinking

📌 **Part of Zoho Data Analyst 28-Day Track**

---

## 📌 Folder Structure

```
Day4-CRM-Revenue-Dashboard/
│
├── Data/CRM_Analytics_Day4.xlsx
├── Dashboard/
│   ├── Revenue_by_Region.png
│   ├── Product_Revenue.png
│   ├── Salesperson_Performance.png
│   ├── Full_Dashboard_View.png
│   └── Data_Model_Diagram.png
├── SQL/join_queries.sql
└── README.md
```

---

