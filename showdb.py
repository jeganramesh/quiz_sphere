from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
import sqlite3

app = FastAPI()

# Allow frontend access
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Function to fetch data from SQLite
def fetch_data():
    conn = sqlite3.connect("quizsphere.db")  # <-- put your DB file
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM messages") # <-- Select all columns from messages table
    rows = cursor.fetchall()
    columns = [description[0] for description in cursor.description] # Corrected variable name for clarity
    conn.close()
    return {"columns": columns, "rows": rows}

@app.get("/data")
def get_data():
    return fetch_data()


#uvicorn main:app --reload
#http://127.0.0.1:8000/docs
