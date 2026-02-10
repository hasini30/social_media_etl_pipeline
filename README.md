# 🚀 Social Media ETL & Analysis: How Raw API Data Becomes Actionable Insights

## 📖 Project Story
While exploring how companies analyze social media platforms, one question stayed in my mind:

**“How do organizations turn massive volumes of raw social media data into meaningful insights?”**

Social media platforms generate huge amounts of unstructured data every second.  
However, raw API data cannot be directly used for analysis or business decision-making.

This curiosity led me to build an **end-to-end ETL pipeline**, where raw social media data is:
- Extracted from an API
- Transformed into a structured format
- Loaded into an analytics-ready dataset
- Analyzed using SQL to derive insights

---

## 🛠️ Tools & Technologies
- **Python**
- **Requests** – API data extraction
- **Pandas** – Data cleaning and transformation
- **CSV** – Data storage
- **SQL** – Post-ETL analysis

---

## 🎯 Business Problem
Raw social media data is:
- Unstructured
- Difficult to analyze directly
- Not suitable for business reporting

This project aims to understand:
- How raw API data can be converted into structured datasets
- How ETL pipelines support analytics workflows
- How SQL helps extract insights from processed data

---

## 📊 KPIs Analyzed
- **Total Number of Posts**
- **Sentiment Distribution**
- **Average Engagement**
- **Likes vs Replies**
- **Engagement by Sentiment**
- **Engagement by Text Length**

---

## 🔍 Analysis Performed

### 🔄 ETL Pipeline
- Extracted raw social media data from a public API using Python
- Cleaned and transformed data using Pandas DataFrames
- Loaded processed data into a CSV file for analytics

### 🧮 SQL-Based Post-ETL Analysis
After completing the ETL pipeline, SQL queries were executed on the processed dataset to derive insights.

---

## 📊 SQL Analysis Queries

### 🔢 Basic Data Understanding

**1. Check total number of posts**
```sql
SELECT COUNT(*) AS total_posts
FROM social_data;
