from sqlalchemy import create_engine

def load_data(df):
    print("🔄 Loading data into MySQL using SQLAlchemy...")

    engine = create_engine(
        "mysql+pymysql://root:2004@127.0.0.1:3306/social_media_db"
    )

    # select only columns that exist in MySQL table
    df_to_load = df[["id", "text", "likes", "replies", "engagement", "sentiment"]]

    df_to_load.to_sql(
        name="social_data",
        con=engine,
        if_exists="append",
        index=False
    )

    print("✅ Data loaded into MySQL using SQLAlchemy")
