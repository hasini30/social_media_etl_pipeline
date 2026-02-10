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
```


**2.View sample records**
```sql
SELECT *
FROM social_data
LIMIT 10;


```

**3.Count of posts by sentiment**
```sql
SELECT sentiment, COUNT(*) AS sentiment_count
FROM social_data
GROUP BY sentiment;


```

**4. Percentage distribution of sentiments**

```sql
SELECT 
    sentiment,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM social_data), 2) AS sentiment_percentage
FROM social_data
GROUP BY sentiment;

```

**5. Average, minimum, and maximum engagement**
```sql
SELECT 
    AVG(engagement) AS avg_engagement,
    MIN(engagement) AS min_engagement,
    MAX(engagement) AS max_engagement
FROM social_data;

```


**6. Top 10 posts with highest engagement**
```sql
SELECT id, text, engagement, sentiment
FROM social_data
ORDER BY engagement DESC
LIMIT 10;

```

**7. Bottom 10 posts with lowest engagement**
```sql
SELECT id, text, engagement, sentiment
FROM social_data
ORDER BY engagement ASC
LIMIT 10;


```

**8. Average likes vs average replies**

```sql
SELECT 
    AVG(likes) AS avg_likes,
    AVG(replies) AS avg_replies
FROM social_data;


```
**9. Posts where replies exceed likes**
```sql
SELECT id, likes, replies, engagement
FROM social_data
WHERE replies > likes;

```


**10. Average engagement by sentiment**
```sql
SELECT 
    sentiment,
    AVG(engagement) AS avg_engagement
FROM social_data
GROUP BY sentiment
ORDER BY avg_engagement DESC;


```

**11. Sentiment category with highest engagement**
```sql
SELECT sentiment
FROM social_data
GROUP BY sentiment
ORDER BY AVG(engagement) DESC
LIMIT 1;


```

**12. Longest posts by text length**

```sql
SELECT 
    id,
    LENGTH(text) AS text_length,
    engagement
FROM social_data
ORDER BY text_length DESC
LIMIT 10;


```

**13. Engagement by text length category**
```sql
SELECT 
    CASE
        WHEN LENGTH(text) < 50 THEN 'Short'
        WHEN LENGTH(text) BETWEEN 50 AND 150 THEN 'Medium'
        ELSE 'Long'
    END AS text_length_category,
    AVG(engagement) AS avg_engagement
FROM social_data
GROUP BY text_length_category;



```

**14. High engagement negative sentiment posts**
```sql
SELECT id, text, engagement
FROM social_data
WHERE sentiment = 'Negative'
ORDER BY engagement DESC
LIMIT 5;
```
**15. Check for null values**
```sql
SELECT 
    SUM(CASE WHEN text IS NULL THEN 1 ELSE 0 END) AS null_texts,
    SUM(CASE WHEN likes IS NULL THEN 1 ELSE 0 END) AS null_likes,
    SUM(CASE WHEN replies IS NULL THEN 1 ELSE 0 END) AS null_replies
FROM social_data;



```

**16. Duplicate ID check**

```sql
SELECT id, COUNT(*) AS occurrences
FROM social_data
GROUP BY id
HAVING COUNT(*) > 1;

```
## 🧠 Key Insights
- Raw social media API data cannot be directly analyzed without transformation
- Sentiment distribution helps understand overall audience perception
- Posts with higher engagement often vary by sentiment category
- Medium-length posts tend to generate better engagement
- Some negative sentiment posts still receive high engagement, indicating strong discussions
- Data quality checks (nulls and duplicates) are essential before analysis
## 🚀 Business Conclusion
Raw social media data by itself does not provide meaningful insights.

This project demonstrates how:
- An **ETL pipeline** converts unstructured API data into structured datasets
- **Pandas** enables efficient data cleaning and transformation
- **SQL analysis** helps uncover sentiment trends, engagement patterns, and data quality issues

By combining ETL and SQL-based analytics, this project showcases how raw social media data can be transformed into **actionable business insights**, similar to real-world analytics workflows used by companies.
## 👤 Author

**Hasini**  
Aspiring Data Analyst with interest in **SQL, Data Analytics, and Business Intelligence**

📧 Email: nadellahasini@gmail.com  
🔗 LinkedIn: https://www.linkedin.com/in/hasini-nadella30  
💻 GitHub: https://github.com/hasini30


