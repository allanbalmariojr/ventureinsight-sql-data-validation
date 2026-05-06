## 🧪 VentureInsight SQL Data Validation & Analysis

This project focuses on validating data integrity and business logic within a venture capital analytics database using SQL. The database supports reporting on startups, funding rounds, investments, acquisitions, and investor activity.

The objective was to ensure that data stored in the database accurately reflects expected business rules and application behavior after system updates.

---

## 🎯 Project Objective

The goals of this project were to:

- Validate correctness of data stored in relational tables
- Ensure consistency between application updates and database records
- Analyze funding, investment, and acquisition patterns using SQL
- Verify business rules through structured queries and aggregation logic
- Identify anomalies or inconsistencies in financial and startup data

---

## 🗄️ Database Overview

The database consists of the following key tables:

- company – startup company information (funding, status, category, country)
- fund – venture capital fund details and activity levels
- funding_round – investment round data
- investment – fund-to-company investment relationships
- acquisition – company acquisition records
- people – founders, investors, employees
- education – educational background data

---

## 🧪 SQL Test Coverage
### 📌 1. Startup Status Validation

Verified that company status updates are correctly reflected in the database by identifying closed startups.

### 📌 2. US News Sector Funding Analysis

Analyzed total funding for US-based news companies to validate category and country filters.

### 📌 3. Cash Acquisition Analysis (2011–2013)

Calculated total acquisition value for cash-based deals during the post-recession period.

### 📌 4–5. Investor & Influencer Filtering

Used pattern matching to validate retrieval of investors based on Twitter handle criteria.

### 📌 6. Geographic Investment Distribution

Aggregated total funding by country to validate global investment data accuracy.

### 📌 7. Funding Round Volatility Analysis

Analyzed daily funding extremes using aggregation and HAVING filters to detect anomalies.

### 📌 8–9. Fund Activity Classification & Behavior Analysis

Classified funds into activity levels using CASE logic and analyzed investment behavior across categories.

---

## 🧠 SQL Techniques Used
- SELECT, WHERE filtering
- Aggregate functions (COUNT, SUM, AVG, MIN, MAX)
- GROUP BY and HAVING clauses
- CASE statements for conditional classification
- LIKE operator for pattern matching
- ORDER BY sorting for data analysis

---

## 📊 Key Findings
- Database correctly handles most structured queries and business logic
- Aggregated financial data aligns with expected patterns across countries and sectors
- Some edge cases in data classification required careful filtering logic using HAVING and CASE statements
- Demonstrates strong relational consistency across multiple tables

--- 

## 🛠 Tools Used
- SQL (PostgreSQL / MySQL style syntax)
- Database schema analysis (ER diagram)
- Excel (query documentation and validation reference)

---

## 🚀 Summary

This project demonstrates SQL-based database validation and analytical testing across a multi-table venture capital system. It focuses on ensuring data integrity, verifying business rules, and extracting meaningful insights from structured financial datasets.

---
