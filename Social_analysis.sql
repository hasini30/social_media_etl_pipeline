-- 1. Check total number of posts
SELECT COUNT(*) AS total_posts
FROM social_data;

-- 2. View sample records
SELECT *
FROM social_data
LIMIT 10;
-- 3. Count of posts by sentiment
SELECT sentiment, COUNT(*) AS sentiment_count
FROM social_data
GROUP BY sentiment;

-- 4. Percentage distribution of sentiments
SELECT 
    sentiment,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM social_data), 2) AS sentiment_percentage
FROM social_data
GROUP BY sentiment;
-- 5. Average, minimum, and maximum engagement
SELECT 
    AVG(engagement) AS avg_engagement,
    MIN(engagement) AS min_engagement,
    MAX(engagement) AS max_engagement
FROM social_data;

-- 6. Top 10 posts with highest engagement
SELECT id, text, engagement, sentiment
FROM social_data
ORDER BY engagement DESC
LIMIT 10;

-- 7. Bottom 10 posts with lowest engagement
SELECT id, text, engagement, sentiment
FROM social_data
ORDER BY engagement ASC
LIMIT 10;

-- 8. Average likes vs average replies
SELECT 
    AVG(likes) AS avg_likes,
    AVG(replies) AS avg_replies
FROM social_data;

-- 9. Posts where replies exceed likes (high discussion posts)
SELECT id, likes, replies, engagement
FROM social_data
WHERE replies > likes;

-- 10. Average engagement by sentiment
SELECT 
    sentiment,
    AVG(engagement) AS avg_engagement
FROM social_data
GROUP BY sentiment
ORDER BY avg_engagement DESC;

-- 11. Sentiment category with highest engagement
SELECT sentiment
FROM social_data
GROUP BY sentiment
ORDER BY AVG(engagement) DESC
LIMIT 1;

-- 12. Longest posts by text length
SELECT 
    id,
    LENGTH(text) AS text_length,
    engagement
FROM social_data
ORDER BY text_length DESC
LIMIT 10;

-- 13. Engagement by text length category
SELECT 
    CASE
        WHEN LENGTH(text) < 50 THEN 'Short'
        WHEN LENGTH(text) BETWEEN 50 AND 150 THEN 'Medium'
        ELSE 'Long'
    END AS text_length_category,
    AVG(engagement) AS avg_engagement
FROM social_data
GROUP BY text_length_category;
-- 14. High engagement negative posts
SELECT id, text, engagement
FROM social_data
WHERE sentiment = 'Negative'
ORDER BY engagement DESC
LIMIT 5;


-- 15. Check for null values
SELECT 
    SUM(CASE WHEN text IS NULL THEN 1 ELSE 0 END) AS null_texts,
    SUM(CASE WHEN likes IS NULL THEN 1 ELSE 0 END) AS null_likes,
    SUM(CASE WHEN replies IS NULL THEN 1 ELSE 0 END) AS null_replies
FROM social_data;

-- 16. Duplicate ID check
SELECT id, COUNT(*) AS occurrences
FROM social_data
GROUP BY id
HAVING COUNT(*) > 1;

