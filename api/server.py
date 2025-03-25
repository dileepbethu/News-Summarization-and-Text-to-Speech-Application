import sys
import os

# Get the absolute path of the project root
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))

from fastapi import FastAPI
from api.main import scrape_news  # type: ignore # Now this import should work!

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello, World!"}

@app.get("/news/{company}")
def get_news(company: str):
    return scrape_news(company)
