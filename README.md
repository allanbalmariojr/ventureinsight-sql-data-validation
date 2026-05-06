## 🧪 VentureInsight SQL Data Validation & Analysis

This project simulates real-world data validation and backend testing for a venture capital analytics platform used by investment firms to analyze startups, funding activity, acquisitions, and investor behavior.

The objective was to use SQL to verify that application updates are correctly reflected in the database and that business logic is consistent across multiple relational tables.

---

## 🎯 Project Objective

The goals of this project were to:

- Validate data integrity across a multi-table relational database
- Ensure application updates are correctly reflected in backend data
- Verify business rules using SQL queries and aggregation logic
- Analyze funding, investment, and acquisition trends for correctness
- Detect inconsistencies or unexpected behavior in financial datasets

---

## 🗄️ Database Overview

The database consists of the following key tables:

- `company` – startup information including funding, category, status, and country
- `fund` – venture capital fund profiles and activity levels
- `funding_round` – records of investment rounds
- `investment` – relationships between funds and companies
- `acquisition` – company acquisition transactions
- `people` – founders, investors, and employees
- `education` – educational backgrounds of individuals

---

## 🧪 SQL Test Coverage
### 📌 1. Startup Status Validation

Verified that updated company statuses (e.g., active → closed) are accurately reflected in the database.

### 📌 2. Sector & Country Funding Validation

Validated total funding for US-based news companies to ensure correct filtering by category and geography.

### 📌 3. Cash Acquisition Analysis (2011–2013)

Calculated total acquisition value for cash-based deals during a defined time period to verify transactional accuracy.

### 📌 4–5. Investor & Influencer Data Filtering

Used pattern matching (LIKE) to validate retrieval of individuals based on social media identifiers and name conditions.

### 📌 6. Geographic Investment Analysis

Aggregated total funding by country to validate global distribution of venture capital activity.

### 📌 7. Funding Round Volatility Analysis

Identified daily funding extremes using GROUP BY and HAVING to validate data consistency and detect anomalies.

### 📌 8–9. Fund Activity Classification & Behavioral Analysis

Used CASE statements to classify funds by activity level and analyzed investment patterns across categories.

---

## 🧠 SQL Techniques Used
- SELECT, WHERE filtering for data validation
- Aggregate functions: COUNT, SUM, AVG, MIN, MAX
- GROUP BY and HAVING for grouped validation logic
- CASE statements for business rule classification
- LIKE operator for pattern-based filtering
- Data integrity verification across relational tables

---

## 📊 Key Findings
- Database updates are generally reflected correctly across core entities
- Aggregated financial data is consistent with expected business logic
- Edge cases required careful handling using HAVING and conditional logic
- Demonstrates strong relational consistency across multiple datasets
- Some queries revealed the importance of strict filtering for accurate reporting

--- 

## 🛠 Tools Used
- SQL (PostgreSQL-style syntax)
- Relational database schema (ER diagram analysis)

---

## 🚀 Summary

This project demonstrates SQL-based data validation and backend testing techniques applied to a venture capital analytics system. It focuses on ensuring data integrity, validating business rules, and extracting reliable insights from structured financial datasets across multiple relational tables.

---
