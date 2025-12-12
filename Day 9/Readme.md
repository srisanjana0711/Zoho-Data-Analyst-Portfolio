# 📊 **Day 9 — Revenue Trend & Regional Performance Analysis (Zoho Analytics + SQL)**

This module focuses on building analytical visualizations, forecasting revenue, identifying regional patterns, and documenting insights for a sales performance dashboard. All work is done using **Zoho Analytics**, **SQL**, and **data visualization best practices**.

---

## ## 🧰 **Tools Used**

* **Zoho Analytics** (Charts, Heatmap, Forecasting, Dashboard Builder)
* **SQL Query Tables** for monthly trend and region aggregation
* **Excel** (data cleaning & understanding earlier)

---

# ## 📌 **Objectives Completed Today**

### ✔ 1. Built **Revenue Trend Line Chart**

* X-axis → Month & Year of Close Date
* Y-axis → Total Deal Amount
* Added **Trend Line**
* Applied **Forecast (2-month projection)**
* Used to understand growth pattern + predict Jan–Mar 2025 revenue.

---

### ✔ 2. Created **Region Performance Heatmap**

* **Rows:** Month & Year
* **Columns:** Region
* **Color:** Sum of Deal Amount
* Helps identify strong & weak regions month-by-month.
* South performed highest (₹61k in Oct), West inconsistent, East/North low.

---

### ✔ 3. Created **Combo Chart (Bar + Line)**

* **Bars:** Total Revenue per Month
* **Line:** Average Deal Value per Month
* Shows how revenue growth is influenced by either more deals or larger deal sizes.

---

### ✔ 4. Implemented **Forecast Model**

* Model: Auto
* Forecast Length: 2 months
* Confidence interval shading visible (red band).
* Forecast expects ₹45k–₹55k revenue in early 2025.

---

### ✔ 5. Created **SQL Query Tables**

These tables make charts faster, consistent, and reusable.

#### 🔹 **Monthly Revenue Trend Query**

```sql
SELECT
  EXTRACT(YEAR FROM "Close_Date")     AS Year_Number,
  EXTRACT(MONTH FROM "Close_Date")    AS Month_Number,
  DATE_FORMAT("Close_Date", '%b %Y')  AS Month_Year,
  SUM("Deal_Amount")                  AS Monthly_Revenue
FROM
  "Deals"
GROUP BY
  Year_Number,
  Month_Number,
  Month_Year
ORDER BY
  Year_Number,
  Month_Number;
```

#### 🔹 **Region Revenue Summary Query**

```sql
SELECT 
  "Region",
  SUM("Deal_Amount") AS Total_Revenue
FROM "Deals"
GROUP BY "Region"
ORDER BY Total_Revenue DESC;
```

---

# ## 📈 **Key Insights Added to Dashboard**

### 🔹 **1. Revenue Trend Insight**

Revenue grew sharply from Aug → Oct 2024 (peak ~₹80k) before dropping in Nov–Dec.
**Recommendation:** Replicate Oct’s sales playbook (deal size strategy).

---

### 🔹 **2. Forecast Insight**

The model predicts recovery to **₹45k–₹55k range** in early 2025.
**Recommendation:** Set short-term revenue targets based on this baseline.

---

### 🔹 **3. Region Heatmap Insight**

South performed strongest across months, especially Oct (₹61k).
**Recommendation:** Increase investment in South; diagnose weak regions like East/North.

---

### 🔹 **4. Combo Chart Insight**

Revenue spikes occur when **average deal size increases**, not when more deals close.
**Recommendation:** Focus on upselling and larger-value deals.

---

# ## 📊 **Dashboard Completed**

The dashboard includes:

* Revenue Trend + Forecast
* Region Heatmap
* Combo Chart
* KPI Cards (Region revenue)
* Insights text widgets
* Dynamic filters (Month, Region, Salesperson)

Exported as PDF for portfolio use.

---

# ## 📁 **File Structure (Suggested)**

```
Day9/
│── README.md   ← (this file)
│── revenue_trend_chart.png
│── forecast_chart.png
│── heatmap_region.png
│── combo_chart.png
│── SQL/
│    ├── monthly_revenue_trend.sql
│    └── region_revenue_summary.sql
└── dashboard_export.pdf
```

---

# ## 🎯 **Outcome**

By end of Day 9, you completed a **full analytical workflow**:
➡ generating meaningful charts
➡ adding forecasting
➡ creating SQL-powered tables
➡ building a final dashboard
➡ writing insights that match real analytics interview expectations.

---

