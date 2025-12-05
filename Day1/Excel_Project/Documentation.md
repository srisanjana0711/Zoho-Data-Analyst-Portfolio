
## 📌 Day 1 — Sales CRM Data Cleaning Project

**Tool Used:** Excel Online
**Dataset:** CRM Sales Data (Leads → Deals)

---

### 🔍 1️⃣ Problem Overview

The raw dataset contained CRM sales records with the following issues:

| Issue Type                 | Description                                    | Impact                 |
| -------------------------- | ---------------------------------------------- | ---------------------- |
| Duplicate Records          | Lead ID repeated                               | Wrong counts & revenue |
| Missing Values             | Blank Deal Value, Date, Name fields            | Incomplete analysis    |
| Inconsistent Date Formats  | Mixed formats: DD-MM-YY, DD/MM/YY, YYYY format | Wrong sorting/timeline |
| Text Formatting Issues     | Product names mismatched (CRM Pro vs crm pro)  | Incorrect grouping     |
| Invalid Numeric Data       | “N/A” in Deal Value field                      | Calculation errors     |
| Non-standard Status Values | “Close won” vs “Won”                           | Wrong KPI results      |

➡️ These directly affect **Revenue**, **Win Rate**, and **Sales Funnel** metrics.

---

### 🛠 2️⃣ Cleaning Steps Performed

| Cleaning Action                    | Excel Feature Used                 | Why                          |
| ---------------------------------- | ---------------------------------- | ---------------------------- |
| Removed duplicates                 | Data → Remove Duplicates           | Ensure uniqueness of records |
| Identified & filled missing values | Manual + Logical value replacement | Accurate totals & insights   |
| Standardized date format           | Format Cells → Date                | Correct time-based analysis  |
| Cleaned product names              | LOWER / TRIM / Replace             | Consistent reporting         |
| Converted invalid Deal_Value       | Replace + Number formatting        | Enable numeric operations    |
| Normalized Status                  | Replace text options               | Correct KPI classification   |

📌 Notes recorded at each step for business traceability

---

### 📈 3️⃣ Before vs After Snapshot

| Metric                 | Before Cleaning | After Cleaning |
| ---------------------- | --------------- | -------------- |
| Total Rows             | 7               | 6              |
| Missing Deal Values    | 2               | 0              |
| Incorrect Date Formats | 3               | 0              |
| Inconsistent Status    | 1               | 0              |

➡️ Data became **analytics-ready** ✔

---

### 📊 4️⃣ Business Insights Enabled

After cleaning, we can now calculate:

* Total **Deals Won**
* **Win Rate**
* **Revenue per Product**
* **Sales Funnel** drop-offs

This is directly useful for **Zoho CRM** decision-making.

---

### 📝 5️⃣ Conclusion

This project demonstrates:

✔ Real-world data quality fixes
✔ Excel cleaning mastery
✔ Analytical thinking with business context
✔ CRM Sales data understanding
✔ Ready for dashboarding & KPI reporting

📌 Next Step:
Perform KPI analysis and build **Sales Performance Dashboard** (Day-2)

---

> **This is part of my 30-day Zoho Data Analyst preparation.**

---

### 📅 Author

**Srisanjana** — Aspiring Zoho Data Analyst

---


