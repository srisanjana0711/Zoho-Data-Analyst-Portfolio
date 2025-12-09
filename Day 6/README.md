# 📊 Day 6 — Zoho Analytics Data Model & Multi-Table Insights

This module focuses on building a **CRM Data Model** in Zoho Analytics and creating cross-table revenue insights.

---

## 🔹 Objective
To combine Deals, Leads, Products, and Salespersons data using **lookup relationships** and generate business KPIs similar to Zoho CRM analytics.

---

## 🧱 Data Model — Tables Imported
| Table Name | Type | Purpose | Primary Key |
|-----------|------|---------|-------------|
| Leads | Dimension | Customer / Lead details | Lead_ID |
| Products | Dimension | Product catalog info | Product_ID |
| Salespersons | Dimension | Sales team details | Salesperson_ID |
| Deals | Fact | Sales opportunities & revenue | Deal_ID |

---

## 🔗 Lookup Relationships Defined

| Child Table → Parent Table | Lookup Key | Relationship Type |
|---------------------------|------------|------------------|
| Deals → Leads | Lead_ID | One-to-Many |
| Deals → Products | Product_ID | One-to-Many |
| Deals → Salespersons | Salesperson_ID | One-to-Many |

✔ Enables multi-table reporting  
✔ Ensures accurate KPIs  
✔ Allows slicing revenue by region/product/salesperson

---

## 📈 Reports Created

### 1️⃣ Revenue by Region (Won Deals)
- Columns used: **Region**, **Sum(Deal_Amount)**
- Filter: **Deal_Stage = Won**
- Business Insight:
  - South region generates the highest revenue
  - East region contributes moderately

> 📌 Demonstrates Deals ↔ Leads relationship working correctly

---

### 2️⃣ Revenue by Product Category (Won Deals)
- Columns used: **Category**, **Sum(Deal_Amount)**
- Filter: **Deal_Stage = Won**
- Business Insight:
  - Analytics category has strong performance
  - Subscription & Support products also contribute to wins

> 📌 Demonstrates Deals ↔ Products relationship

---

## 🧩 Business Value
With this data model in place, decision-makers can:

✔ Track revenue trends by customer region  
✔ Evaluate top-performing product lines  
✔ Measure salesperson performance  
✔ Perform funnel and stage-based analytics  
✔ Maintain **data consistency** across all dashboards

---

## 📎 Screenshots (To attach later)
1. Data model relationship view in Zoho Analytics
   <img width="849" height="488" alt="image" src="https://github.com/user-attachments/assets/8461e389-4128-4440-99c2-20a103dc3cae" />

3. Revenue by Region chart
   <img width="990" height="700" alt="image" src="https://github.com/user-attachments/assets/4db86457-57ba-4454-8579-478763016839" />

5. Revenue by Product Category chart
   <img width="987" height="469" alt="image" src="https://github.com/user-attachments/assets/d408a759-ba12-414e-92fa-83e23805fef6" />


---

## 🎯 Skills Demonstrated
- Relational Data Modeling  
- Fact + Dimension Table Design  
- Lookup Key Mapping  
- CRM-style Revenue Analytics  
- Dashboard reporting in Zoho Analytics  
- Portfolio project documentation

---

📌 **Status:** Completed  
📌 Workspace Name: *Sales_CRM_Analytics*  

---

_This work is part of the **Zoho Data Analyst Track — Day 6** progress._
