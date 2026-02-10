import requests

def extract_data():
    url = "https://jsonplaceholder.typicode.com/comments"
    response = requests.get(url)
    response.raise_for_status()
    return response.json()
