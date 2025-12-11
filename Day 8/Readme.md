
# 📊 Sales Funnel & Revenue Insights Dashboard – v1

This repository contains the exported **Sales Funnel & Revenue Insights Dashboard – v1**, designed and built using **Zoho Analytics**.
The dashboard provides a **real-time view of sales performance**, including funnel drop-offs, revenue insights, salesperson effectiveness, and win-rate analysis.

---

## 📁 Files Included

| File                            | Description                                                                                                                    |
| ------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| `sales_funnel_dashboard_v1.pdf` | 📄 Full exported dashboard (PDF format) including KPIs, funnel charts, regional revenue, salesperson performance & deal table. |
| `README.md`                     | Documentation describing the purpose, content, and insights of the dashboard.                                                  |

> You can add more files later (CSV exports, screenshots, formulas, schema documentation).

---

## 🧾 Dashboard Overview

The **Sales Funnel & Revenue Insights Dashboard** includes:

### ✔ KPI Cards

* **Revenue (Won)**
* **Number of Won Deals**
* **Average Deal Value**
* **Win Rate (%)**

### ✔ Visual Reports

* **Sales Funnel Chart** (Qualification → Proposal → Negotiation → Won → Lost)
* **Revenue by Region (Won Deals)**
* **Deals Closed by Salesperson**
* **Underlying Deals Table**

---

## 🔍 Key Insights (Based on Current Dataset)

* **Win Rate:** ~50%
  (Calculated using the custom bucket flag for Won/Lost)
* **Top Salesperson:** Arjun Verma (4 won deals)
* **Highest Revenue Region:** South
* **Average Deal Value:** ₹21,833
* **Total Revenue (Won Deals):** ₹1,31,000

---

## 🛠 How the Dashboard Was Built (Technical Notes)

* Dataset cleaned in Zoho Analytics (duplicates removed, dates formatted, currency normalized).
* A **Bucket Column** `Won_Flag` created:

  * `1` → Won
  * `0` → Lost
* Win Rate KPI uses **Average of Won_Flag**.
* Regional Revenue uses **SUM(Deal_Amount)** grouped by Region.
* Sales Funnel uses **Deal_Stage** distribution.

---

## 📌 How to View the Dashboard

1. Download the PDF file (`sales_funnel_dashboard_v1.pdf`).
2. Open it in any PDF viewer (Chrome, Edge, Adobe, Preview).
3. Scroll through the KPIs, funnel visualization, regional charts, salesperson charts, and deal table.

---

## 📂 Recommended Folder Structure (if adding more files later)

```
/
├── sales_funnel_dashboard_v1.pdf
├── README.md
└── exports/
    ├── deals_table.csv
    ├── revenue_by_region.csv
    ├── deals_by_salesperson.csv
    └── screenshots/
```

---

## 👤 Author

Created by **Srisanjana K** as part of a Data Analytics learning and portfolio development project.

---


