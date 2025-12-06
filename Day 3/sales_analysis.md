# 📊 Sales Analytics Using SQL

This mini project analyzes sales performance based on a sample CRM dataset.  
Objective: Extract business insights from SQL queries — similar to Zoho Analytics dashboards.

---

## 📌 Dataset Used — `Sales`

| Column | Description |
|--------|-------------|
| Deal_ID | Unique identifier of a deal |
| Region | Sales region |
| Product | Product name |
| Stage | Sales pipeline stage |
| Amount | Deal value (some values missing) |
| Deal_Date | Date of deal activity |

⚠ Data Issues Identified:
- `Gamma` vs `gamma` inconsistency in Product name
- One NULL value in Amount column

---

## 📈 KPI Insights & SQL Queries

---

### 🔹 1️⃣ Revenue by Region

```sql
SELECT Region, SUM(Amount) AS Total_Revenue
FROM Sales
GROUP BY Region
ORDER BY Total_Revenue DESC;
```

#### Output:
| Region | Total_Revenue |
|--------|--------------:|
| North  | 155000 |
| South  | 120000 |
| West   | 120000 |
| East   | 70000 |

#### Insight:
> North region leads in revenue contribution → focus market.  
East region needs business expansion strategies.

---

### 🔹 2️⃣ Revenue by Stage (Pipeline Health)

```sql
SELECT Stage, SUM(Amount) AS Revenue
FROM Sales
GROUP BY Stage
ORDER BY Revenue DESC;
```

#### Output:
| Stage        | Revenue |
|--------------|--------:|
| Closed Won   | 315000 |
| Proposal     | 80000 |
| Negotiation  | 40000 |
| Closed Lost  | 30000 |

#### Insight:
> Strong win rate.  
> ₹1.2 Lakhs stuck in early pipeline → improve negotiation & proposal conversion.

---

### 🔹 3️⃣ Product Revenue Performance

```sql
SELECT Product, SUM(Amount) AS Revenue
FROM Sales
GROUP BY Product
ORDER BY Revenue DESC;
```

#### Output:
| Product | Revenue |
|---------|--------:|
| Alpha   | 215000 |
| Beta    | 120000 |
| Gamma   | 70000 |
| gamma   | 60000 |

#### Insight:
> Top product: **Alpha**.  
> Data inconsistency found → clean `Gamma/gamma`.

---

## 🧹 Data Cleaning

Standardize product names + fix NULL issues:

```sql
SELECT LOWER(Product) AS cleaned_product,
       SUM(COALESCE(Amount,0)) AS Revenue
FROM Sales
GROUP BY cleaned_product
ORDER BY Revenue DESC;
```

#### Output:
| cleaned_product | Revenue |
|----------------|--------:|
| alpha | 215000 |
| beta  | 120000 |
| gamma | 130000 |

#### Insight:
> Gamma revenue was underreported earlier → cleaning improves KPI accuracy.

---

### 🔹 4️⃣ Max Deal Value per Product

```sql
SELECT UPPER(Product) AS cleaned_product,
       MAX(COALESCE(Amount,0)) AS revenue
FROM Sales
GROUP BY cleaned_product
ORDER BY revenue DESC;
```

#### Output:
| cleaned_product | revenue |
|----------------|--------:|
| ALPHA | 80000 |
| GAMMA | 70000 |
| BETA  | 55000 |

#### Insight:
> Alpha has the highest individual deal value.  
> Gamma has high-ticket potential → candidate for premium selling.

---

## 🏁 Final Takeaways

| Category | Top Performer |
|---------|---------------|
| Revenue by Region | North |
| Product Revenue | Alpha |
| Stage Revenue | Closed Won |
| Highest Deal | Alpha (₹80K) |

### Business Recommendations:
- 📍 Focus on North region for scaling wins  
- 🎯 Improve conversion in early pipeline
- 🚀 Promote Alpha as flagship product
- 🔄 Clean data regularly before reporting

---

