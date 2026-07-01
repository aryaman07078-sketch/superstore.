 Sales & Inventory Analytics Dashboard


A end-to-end business analytics project analyzing 9,994 retail transactions to uncover profitability gaps, regional performance trends, and inventory insights — built using Excel, SQL, and Power BI.




🗂️ Project Overview

This project performs a full sales and inventory analysis on the Sample Superstore dataset — a publicly available US retail dataset containing transactions across three product categories, four geographic regions, and three customer segments.

The goal was to answer four core business questions:


Which product categories and sub-categories are most and least profitable?
Which regions are outperforming or underperforming?
Which products are losing money despite high sales volume?
What data-driven actions can improve overall profitability?



🛠️ Tools & Technologies

ToolPurposeMicrosoft ExcelPivot Tables, data exploration, category & region summariesSQLite (DB Browser)SQL queries to validate findings and extract insightsPower BI WebInteractive dashboard with 5 visualizationsGitHubVersion control and project documentation


📁 Repository Structure

superstore-analytics/
│
├── data/
│   └── SampleSuperstore.csv          # Raw dataset (source: Kaggle)
│
├── sql/
│   └── superstore_queries.sql        # All 5 SQL queries with comments
│
├── dashboard/
│   └── screenshots/                  # Power BI dashboard screenshots
│
├── report/
│   └── Superstore_Analytics_Report.docx  # Full written report
│
└── README.md


📈 Key Findings

Category Performance

CategoryTotal SalesTotal ProfitMarginTechnology$836,154$145,45417.4% ✅Furniture$741,999$18,4512.5% 🔴Office Supplies$719,047$122,49017.0% ✅


Furniture generates the 2nd highest revenue but only a 2.5% profit margin — a critical business red flag.



Loss-Making Products

Sub-CategorySalesProfitTables$206,965-$17,725 🔴Bookcases$114,879-$3,472 🔴Supplies$46,673-$1,189 🔴


Tables lose $0.086 for every $1 of revenue — almost certainly due to excessive discounting.



Regional Performance

RegionSalesProfitMarginWest$725,457$108,41814.9% 🥇East$678,781$91,52213.5% 🥈South$391,721$46,74911.9% 🥉Central$501,239$39,7067.9% 🔴


Central region underperforms with nearly half the margin of the West — representing $35K+ in recoverable annual profit.




🗄️ SQL Queries

Five production-ready queries covering:

sql-- 1. Sales & Profit by Category
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

See sql/superstore_queries.sql for all queries.


📊 Power BI Dashboard

The interactive dashboard contains 5 visuals:


Bar Chart — Sales by Category
Bar Chart — Profit by Sub-Category
Bar Chart — Profit by Region
Pie Chart — Sales by Customer Segment
KPI Card — Total Revenue ($2.30M)



💡 Business Recommendations

PriorityRecommendationExpected Outcome🔴 UrgentCap Furniture discounts at 20%Recover $17K+ in annual profit🔴 UrgentAudit Central region operationsImprove margin from 7.9% to 13%+🟡 HighPromote Copiers & Paper (37–43% margins)Grow profit without added cost🟡 HighExpand Technology categoryLeverage strong 17.4% margin at scale🟢 MediumLaunch Corporate B2B sales programGrow 30.74% segment share toward 40%+


📦 Dataset


Source: Kaggle — Sample Superstore Dataset
Records: 9,994 transactions
Columns: 13 fields (Ship Mode, Segment, Region, Category, Sub-Category, Sales, Quantity, Discount, Profit, and more)



🚀 About This Project

This project was completed as part of a structured 2-week analytics learning plan — serving as a foundational stepping stone toward supply chain analytics. It demonstrates the ability to take raw data from exploration to insight to recommendation using industry-standard tools.

Skills demonstrated: Data cleaning · Pivot Tables · SQL querying · Dashboard design · Business insight generation · Report writing


Built by Aryaman Verma — July 2026
