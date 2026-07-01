# 📊 Sales & Inventory Analytics Dashboard

An end-to-end business analytics project analyzing 9,994 retail transactions to uncover profitability gaps, regional performance trends, and inventory insights — built using Excel, SQL, and Power BI.

![Excel](https://img.shields.io/badge/Excel-Pivot%20Tables-217346?logo=microsoft-excel&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-SQLite-003B57?logo=sqlite&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=black)

---

## 🗂️ Project Overview

This project performs a full sales and inventory analysis on the **Sample Superstore** dataset — a publicly available US retail dataset containing transactions across three product categories, four geographic regions, and three customer segments.

The goal was to answer four core business questions:

1. Which product categories and sub-categories are most and least profitable?
2. Which regions are outperforming or underperforming?
3. Which products are losing money despite high sales volume?
4. What data-driven actions can improve overall profitability?

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Microsoft Excel | Pivot tables, data exploration, category & region summaries |
| SQLite (DB Browser) | SQL queries to validate findings and extract insights |
| Power BI (Web) | Interactive dashboard with 5 visualizations |
| GitHub | Version control and project documentation |

---

## 📁 Repository Structure

```
superstore-analytics/
│
├── data/
│   └── SampleSuperstore.csv               # Raw dataset (source: Kaggle)
│
├── sql/
│   └── superstore_queries.sql             # All 5 SQL queries with comments
│
├── dashboard/
│   └── screenshots/                       # Power BI dashboard screenshots
│
├── report/
│   └── Superstore_Analytics_Report.docx   # Full written report
│
└── README.md
```

---

## 📈 Key Findings

### Category Performance

| Category | Total Sales | Total Profit | Margin |
|---|---|---|---|
| Technology | $836,154 | $145,454 | 17.4% ✅ |
| Furniture | $741,999 | $18,451 | 2.5% 🔴 |
| Office Supplies | $719,047 | $122,490 | 17.0% ✅ |

> Furniture generates the 2nd highest revenue but only a 2.5% profit margin — a critical business red flag.

### Loss-Making Products

| Sub-Category | Sales | Profit |
|---|---|---|
| Tables | $206,965 | -$17,725 🔴 |
| Bookcases | $114,879 | -$3,472 🔴 |
| Supplies | $46,673 | -$1,189 🔴 |

> Tables lose $0.086 for every $1 of revenue.

### Regional Performance

| Region | Sales | Profit | Margin |
|---|---|---|---|
| West | $725,457 | $108,418 | 14.9% 🥇 |
| East | $678,781 | $91,522 | 13.5% 🥈 |
| South | $391,721 | $46,749 | 11.9% 🥉 |
| Central | $501,239 | $39,706 | 7.9% 🔴 |

> Central region underperforms with nearly half the margin of the West — representing $35K+ in recoverable annual profit.

---

## 🗄️ SQL Queries

Five production-ready queries covering:

```sql
-- 1. Sales & Profit by Category
SELECT Category,
       SUM(Sales)  AS Total_Sales,
       SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 2. Sub-Category Profitability
-- 3. Loss-Making Products (HAVING SUM(Profit) < 0)
-- 4. Regional Performance
-- 5. Top 10 Best-Selling Sub-Categories by Volume
```

See [`sql/superstore_queries.sql`](sql/superstore_queries.sql) for all queries.

---

## 📊 Power BI Dashboard

The interactive dashboard contains 5 visuals:

1. Bar Chart — Sales by Category
2. Bar Chart — Profit by Sub-Category
3. Bar Chart — Profit by Region
4. Pie Chart — Sales by Customer Segment
5. KPI Card — Total Revenue ($2.30M)

*(Screenshots in [`dashboard/screenshots/`](dashboard/screenshots/))*

---

## 💡 Business Recommendations

| Priority | Recommendation | Expected Outcome |
|---|---|---|
| 🔴 Urgent | Cap Furniture discounts at 20% | Recover $17K+ in annual profit |
| 🔴 Urgent | Audit Central region operations | Improve margin from 7.9% to 13%+ |
| 🟡 High | Promote Copiers & Paper (37–43% margins) | Grow profit without added cost |
| 🟡 High | Expand Technology category | Leverage strong 17.4% margin at scale |
| 🟢 Medium | Launch Corporate B2B sales program | Grow 30.74% segment share toward 40%+ |

---

## 📦 Dataset

- **Source:** [Kaggle — Sample Superstore Dataset[]](https://www.kaggle.com/datasets/bravehart101/sample-supermarket-dataset)
- **Records:** 9,994 transactions
- **Columns:** 13 fields (Ship Mode, Segment, Region, Category, Sub-Category, Sales, Quantity, Discount, Profit, and more)

---

## 🚀 About This Project

This project was completed as part of a structured 2-week analytics learning plan — serving as a foundational stepping stone toward supply chain analytics. It demonstrates the ability to take raw data from exploration to insight to recommendation using industry-standard tools.

**Skills demonstrated:** Data cleaning · Pivot Tables · SQL querying · Dashboard design · Business insight generation · Report writing

---

Built by **Aryaman Verma** — July 2026
