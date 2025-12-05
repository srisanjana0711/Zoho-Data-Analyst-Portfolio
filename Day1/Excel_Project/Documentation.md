
## 📌 Day 1 — CRM Sales Data Cleaning Project

**Tool Used:** Microsoft Excel (Mac)
**Dataset Type:** Zoho CRM Sales (Leads → Deals)

---

### 🔍 1️⃣ Problem Overview

Raw dataset had the following issues:

| Issue Type                | Description                                | Impact                              |
| ------------------------- | ------------------------------------------ | ----------------------------------- |
| Duplicate Records         | Lead ID repeated                           | Wrong counts & revenue calculations |
| Missing Values            | Deal_Value, Lead_Name, Date missing        | Leads to incorrect KPI reporting    |
| Inconsistent Date Formats | Mixed formats (DD-MM-YY / DD/MM/YY / YYYY) | Sorting errors & dashboard issues   |
| Product Name Variations   | “crm pro”, extra spaces                    | Incorrect revenue grouping          |
| Invalid Numeric Data      | “N/A” in Deal_Value                        | Formula errors in Excel             |
| Status Format Issues      | “Close won”, “Negotiation”                 | Wrong Win Rate calculation          |

➡️ These directly impact **Win Rate, Revenue, and Sales Funnel insights**.

---

### 🛠 2️⃣ Cleaning Steps Performed

| Action                    | Excel Feature Used                    | Result                           |
| ------------------------- | ------------------------------------- | -------------------------------- |
| Removed duplicates        | Data → Remove Duplicates              | Unique Lead_ID records preserved |
| Filled missing Deal_Value | AVERAGE + Paste as Value              | Accurate revenue computations    |
| Filled blank Lead_Name    | Logical placeholder (“Email Contact”) | Consistent CRM contacts          |
| Standardized date format  | Format Cells → DD-MM-YYYY             | Correct time trend analysis      |
| Fixed product names       | Find & Replace                        | Clean grouping by product        |
| Normalized Status values  | Replace All                           | Correct Won/Lost classification  |

---

### 🖼️ 3️⃣ Before vs After Screenshots

📸 Add your screenshots here

| Raw Data (Before)        | Cleaned Data (After)     |
| ------------------------ | ------------------------ |
| <img width="625" height="195" alt="image" src="https://github.com/user-attachments/assets/ab70b8fc-b0d1-4179-8357-1b8ab5af2aaa" />|<img width="611" height="346" alt="image" src="https://github.com/user-attachments/assets/4f321729-f9e5-4c37-b587-501da46fb4b9" />
 |



---
### 📝 4 Conclusion

This project demonstrates my skills in:

✔ Excel Data Cleaning
✔ CRM Sales Data Understanding
✔ KPI Computation
✔ Business Insight Generation
✔ Documentation & Portfolio Building

📌 This dataset is now ready for:
➡ Sales Funnel analysis
➡ Zoho Analytics dashboard
➡ Data-driven decision-making

---

### 📅 Author

**Srisanjana**
*Aspiring Zoho Data Analyst*

---

