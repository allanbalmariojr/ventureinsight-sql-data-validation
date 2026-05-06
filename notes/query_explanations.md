# 📘 SQL Query Explanations – VentureInsight Data Validation

This document explains the logic behind each SQL query used in the VentureInsight Data Validation project. Each query was designed to validate database integrity, test business rules, and analyze venture capital activity across multiple relational tables.

---

## 📌 Task 1: Startup Landscape Analysis

### 🎯 Objective
Identify startups that have been updated to a **closed status** in the database.

### 🧠 Logic
- Filter companies where `status = 'closed'`
- Count or list results to verify application updates are reflected in the database

### 🔍 SQL Concepts Used
- `SELECT`
- `WHERE` filtering
- Aggregation (`COUNT` if used)

### 📊 Validation Purpose
Ensures that lifecycle updates in the application correctly propagate to the database.

---

## 📌 Task 2: Sector Analysis for US Investors

### 🎯 Objective
Analyze total funding for **US-based news companies**.

### 🧠 Logic
- Filter by:
  - `category_code = 'news'`
  - `country_code = 'USA'`
- Sort by `funding_total` in descending order

### 🔍 SQL Concepts Used
- `WHERE` with multiple conditions
- `ORDER BY`

### 📊 Validation Purpose
Confirms correct categorization and geographic filtering of funding data.

---

## 📌 Task 3: Cash Acquisition Analysis (2011–2013)

### 🎯 Objective
Calculate total value of cash-based acquisitions during the post-recession period.

### 🧠 Logic
- Filter acquisitions:
  - `term_code = 'cash'`
  - `acquired_at BETWEEN 2011 AND 2013`
- Aggregate using `SUM(price_amount)`

### 🔍 SQL Concepts Used
- `SUM()`
- `WHERE`
- Date filtering

### 📊 Validation Purpose
Validates financial transaction integrity over a specific time period.

---

## 📌 Task 4: Industry Influencer Analysis

### 🎯 Objective
Identify users with Twitter handles starting with **"Silver"**.

### 🧠 Logic
- Use pattern matching:
  - `twitter_username LIKE 'Silver%'`

### 🔍 SQL Concepts Used
- `LIKE` operator

### 📊 Validation Purpose
Ensures correct text pattern filtering for influencer identification logic.

---

## 📌 Task 5: Finance Influencer Targeting

### 🎯 Objective
Find finance influencers with specific social media and name patterns.

### 🧠 Logic
- `twitter_username LIKE '%money%'`
- `last_name LIKE 'K%'`

### 🔍 SQL Concepts Used
- Multiple `LIKE` conditions
- Logical operators (`AND`)

### 📊 Validation Purpose
Validates complex filtering logic combining multiple conditions.

---

## 📌 Task 6: Geographic Investment Analysis

### 🎯 Objective
Analyze total funding by country.

### 🧠 Logic
- Group companies by `country_code`
- Sum `funding_total`
- Sort results descending

### 🔍 SQL Concepts Used
- `GROUP BY`
- `SUM()`
- `ORDER BY`

### 📊 Validation Purpose
Ensures correct aggregation of financial data across geographic regions.

---

## 📌 Task 7: Funding Round Volatility Analysis

### 🎯 Objective
Detect funding volatility across dates.

### 🧠 Logic
- Group by `funded_at`
- Calculate:
  - `MAX(raised_amount)`
  - `MIN(raised_amount)`
- Filter using `HAVING`:
  - Exclude rows where min = 0 or min = max

### 🔍 SQL Concepts Used
- `GROUP BY`
- `HAVING`
- Aggregate functions (`MIN`, `MAX`)

### 📊 Validation Purpose
Identifies abnormal funding distribution patterns.

---

## 📌 Task 8: Fund Activity Classification

### 🎯 Objective
Categorize funds based on investment activity level.

### 🧠 Logic
- Use `CASE` statement:
  - ≥ 100 → high_activity
  - 20–99 → middle_activity
  - < 20 → low_activity

### 🔍 SQL Concepts Used
- `CASE`
- Conditional logic

### 📊 Validation Purpose
Ensures correct business rule classification logic is applied.

---

## 📌 Task 9: Investment Strategy Analysis

### 🎯 Objective
Analyze average funding rounds per fund activity category.

### 🧠 Logic
- Group by `fund_activity`
- Calculate `AVG(investment_rounds)`
- Round results using `ROUND()`
- Sort ascending

### 🔍 SQL Concepts Used
- `AVG()`
- `GROUP BY`
- `ROUND()`
- `ORDER BY`

### 📊 Validation Purpose
Evaluates behavioral patterns of funds based on activity level.

---

# 🚀 Summary

These queries validate both **data correctness** and **business logic consistency** across a multi-table relational database. The project demonstrates SQL proficiency in filtering, aggregation, pattern matching, and conditional classification.
