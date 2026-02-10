from extract import extract_data
from transform import transform_data
from load import load_data

def run_pipeline():
    print("🚀 Starting ETL Pipeline")

    # Extract
    raw_data = extract_data()
    print("✅ Extraction complete")

    # Transform
    transformed_data = transform_data(raw_data)
    print("✅ Transformation complete")

    # DEBUG (important)
    print("Total rows after transform:", len(transformed_data))
    print(transformed_data.head())

    # Load
    load_data(transformed_data)

    print("🎉 ETL Pipeline Finished")

if __name__ == "__main__":
    run_pipeline()

