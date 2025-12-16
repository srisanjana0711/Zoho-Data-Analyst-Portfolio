

# 📅 Day 13 – Marketing ROI Analysis using Data Blending (Zoho Analytics)

## 📌 Project Overview

The objective of this project is to analyze **Marketing ROI** by blending **CRM data** with **external marketing campaign data** using **Zoho Analytics**.
This project focuses on solving real-world analytics challenges such as **data blending**, **grain mismatch**, **data validation**, and **ROI calculation**, which are commonly expected in Zoho Data Analyst interviews.

---

## 🎯 Business Problem Statement

Marketing and Sales data usually exist in **different systems**:

* Marketing team tracks **campaign cost**
* Sales team tracks **leads, deals, and revenue**

To answer key business questions like:

* *Which marketing channels are profitable?*
* *Where should marketing spend be increased or reduced?*

we need to **combine (blend)** these datasets correctly.

---

## 🗂️ Data Sources Used

### 1️⃣ CRM Data

* **Lead Table**

  * Lead_ID
  * Lead_Source
  * Region
  * Industry
* **Deals Table**

  * Deal_ID
  * Lead_ID
  * Deal_Amount
  * Deal_Stage
  * Close_Date

### 2️⃣ External Marketing Data

* **Marketing_Campaigns Table**

  * Lead_Source
  * Campaign_Name
  * Campaign_Cost
  * Campaign_Date

---

## 🔗 Data Blending Approach

* Created **lookup relationships** in Zoho Analytics:

  * `Marketing_Campaigns.Lead_Source → Lead.Lead_Source`
  * `Lead.Lead_ID → Deals.Lead_ID`
* This allowed analysis across **Marketing → Lead → Deal** data paths.
* Carefully avoided modifying existing CRM tables to prevent breaking existing dashboards.

---

## ⚠️ Key Challenges Faced & How They Were Solved

### 🔹 1. Grain Mismatch

* **Deal_Amount** → Deal-level data
* **Campaign_Cost** → Campaign / Lead_Source-level data

✅ **Solution**:

* Used **Pivot View** to aggregate data to a common grain (**Lead_Source level**).

---

### 🔹 2. Cost Duplication Risk

* Campaign cost appeared repeated when viewed at deal-level rows.

✅ **Solution**:

* Validated totals using:

  * Standalone Deals report
  * Blended report totals
* Ensured no double counting by grouping correctly in pivot and query tables.

---

### 🔹 3. Zoho Formula Limitation

Zoho does not allow aggregate formulas across **different relationship paths**.

❌ Direct ROI formula in pivot failed.

✅ **Solution**:

* Created a **Query Table** using Zoho Analytics SQL to pre-aggregate data and calculate ROI.

---

## 🧮 Query Table Used (Core of the Project)

### Query Table Name:

**Marketing_ROI_Summary**

```sql
SELECT
    l."Lead_Source" AS Lead_Source,
    SUM(d."Deal_Amount") AS Total_Revenue,
    SUM(m."Campaign_Cost") AS Total_Cost,
    (
        (SUM(d."Deal_Amount") - SUM(m."Campaign_Cost"))
        / SUM(m."Campaign_Cost")
    ) * 100 AS ROI_Percentage
FROM "Deals" d
JOIN "Lead" l
    ON d."Lead_ID" = l."Lead_ID"
JOIN "Marketing_Campaigns" m
    ON l."Lead_Source" = m."Lead_Source"
GROUP BY l."Lead_Source";
```

---

## 📊 Final Visualizations Created

### 📈 1. Revenue vs Cost by Lead Source

* **Chart Type**: Bar Chart
* **Purpose**: Compare marketing spend vs revenue generated
* **Insight**: Shows which channels drive volume

### 📉 2. ROI by Lead Source

* **Chart Type**: Line / Bar Chart
* **Purpose**: Evaluate profitability of each channel
* **Insight**: Identifies high-performing and underperforming campaigns

---

## 💡 Key Business Insights

1. **Email campaigns** deliver the **highest ROI**, generating strong revenue with relatively low cost, making them ideal for scaling.
2. **LinkedIn campaigns** show **negative ROI**, indicating inefficient spend and the need for optimization.
3. **Website campaigns** contribute the **highest revenue volume**, though with moderate ROI, making them reliable for growth-focused strategies.
4. **Webinars** break even, suggesting potential improvement through better targeting or content strategy.

---

## 🧠 Key Learnings

* Data blending is not just about joining tables; **grain alignment is critical**.
* Always **validate totals** when combining multiple data sources.
* Zoho Analytics has **relationship-path limitations**, and **Query Tables** are a professional workaround.
* Clear, simple charts are more effective for business users than complex visuals.

---

