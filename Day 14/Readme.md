
# 📅 Day 14 — Data Validation, QA & Debugging (Zoho Data Analyst Track)

## 📌 Objective

The objective of Day 14 was to **validate data accuracy, consistency, and reliability** before sharing dashboards with stakeholders.
This day focused on **thinking like a responsible analyst**, not just building visuals.

---

## 🧠 Key Learning Outcomes

* Understood **data quality dimensions**
* Performed **end-to-end data validation**
* Practiced **error simulation & debugging**
* Built confidence in **defending KPIs**
* Documented validation steps for portfolio & interviews

---

## 🧩 UNIT 1 — Data Quality & Validation Concepts

### Data Quality Dimensions Covered

* **Accuracy** – Data matches the source system
* **Completeness** – No critical missing values
* **Consistency** – Same metrics give same results across visuals
* **Timeliness** – Data is up to date
* **Validity** – Data follows correct formats & rules

### Common Data Issues Studied

* Duplicate records
* Missing values
* Incorrect joins
* Grain mismatch
* Date misalignment

### Validation Techniques Learned

* Row count checks
* Sum & total reconciliation
* Cross-table validation
* Spot checks (sample testing)

---

## 🛠 UNIT 2 — Practical Validation Work

### 🔹 Step 1: Row Count Validation

Validated record counts across:

* Excel
* Zoho Analytics table
* SQL query output

**Result:**

```
Excel rows      : 5
Zoho table rows : 5
SQL count       : 5
Status          : MATCHED
```

✔ Ensured no missing or duplicate records

---

### 🔹 Step 2: Revenue Total Reconciliation

Validated total revenue across:

* Excel
* Zoho Analytics table
* SQL query
* Dashboard KPI

**Result:**

```
Total Revenue = 211,000
(All sources matched)
```

✔ KPI confirmed as business-accurate

---

### 🔹 Step 3: Filter & Drill-Down Validation

* Tested dashboard filters (Lead Source)
* Verified KPI updates correctly
* Checked drill-down totals against KPI values

✔ Filters and drill-downs behaved consistently

---

### 🔹 Step 4: Error Simulation & Debugging (Critical Exercise)

#### Error Introduced

* Changed join logic between **Marketing Cost** and **Revenue/Deals** tables

#### What Happened

* Cost values inflated for some lead sources
* ROI became highly negative
* KPIs changed without business reason

#### Root Cause

* **Grain mismatch**

  * Cost table → one row per lead source
  * Deals table → multiple rows per lead source
  * Incorrect join caused **row multiplication**

#### Fix Applied

* Restored correct join logic
* Ensured aggregation at the correct grain
* Revalidated row counts and totals

#### Final Result

* Revenue total restored to **211,000**
* ROI values became logical and consistent

✔ Dashboard accuracy restored

---

## 📊 Business Insights (Post-Validation)

* **Email** provides the highest positive ROI
* **Website** incurs high cost with negative ROI
* **LinkedIn** consistently underperforms
* **Webinar** is break-even

These insights are now **trustworthy** due to validation.

---

## 🧠 Analyst Best Practices Followed

* Never assumed data was correct
* Validated totals before row-level analysis
* Questioned unexpected KPI changes
* Documented issues and fixes
* Revalidated after every correction

---

