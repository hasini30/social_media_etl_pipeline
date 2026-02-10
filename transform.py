import pandas as pd
from textblob import TextBlob

def transform_data(data):
    # 1. Convert JSON data to DataFrame
    df = pd.DataFrame(data)

    # 2. Rename column to look like social media text
    df.rename(columns={"body": "text"}, inplace=True)

    # 3. Create engagement metrics (simulated)
    df["likes"] = df["id"] % 50
    df["replies"] = df["id"] % 10
    df["engagement"] = df["likes"] + df["replies"]

    # 4. Sentiment Analysis
    def get_sentiment(text):
        polarity = TextBlob(text).sentiment.polarity
        if polarity > 0:
            return "Positive"
        elif polarity < 0:
            return "Negative"
        else:
            return "Neutral"

    df["sentiment"] = df["text"].apply(get_sentiment)

    return df
