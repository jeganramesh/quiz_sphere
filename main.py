from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
from datetime import datetime
import google.generativeai as genai
import requests
import os

# ===== CONFIG =====
GEMINI_API_KEY = "AIzaSyC911NQEQSuSBh1FUQ9ACJRYXkbPL1XWRw"
GEMINI_API_URL = "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent"

# Configure Gemini SDK
genai.configure(api_key=GEMINI_API_KEY)
model = genai.GenerativeModel("gemini-pro")

app = FastAPI(title="Chat API", version="1.0.0")

# Allow all origins (for dev)
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# ===== MODELS =====
class ChatMessage(BaseModel):
    message: str
    user_id: str = "anonymous"

class ChatResponse(BaseModel):
    response: str
    timestamp: str

# ===== AI CALLERS =====
def get_chat_response(user_message: str) -> str:
    """
    Try with google-generativeai SDK, fallback to raw API.
    """
    if not GEMINI_API_KEY or GEMINI_API_KEY == "YOUR_GEMINI_API_KEY":
        return "⚠️ Gemini API key not set!"

    prompt = f"""
    You are a helpful AI assistant for Quiz Sphere, an educational app.
    User message: {user_message}

    Please provide a helpful, friendly, and educational response.
    Keep responses concise but informative.
    """

    # --- First: library method ---
    try:
        response = model.generate_content(prompt)
        return response.text.strip()
    except Exception as e:
        print(f"Library method failed: {e}")
        return get_chat_response_direct_api(prompt)

def get_chat_response_direct_api(prompt: str) -> str:
    """
    Fallback to direct REST API call.
    """
    try:
        payload = {
            "contents": [
                {"parts": [{"text": prompt}]}
            ]
        }
        headers = {"Content-Type": "application/json"}
        resp = requests.post(
            f"{GEMINI_API_URL}?key={GEMINI_API_KEY}",
            headers=headers,
            json=payload,
            timeout=30
        )
        if resp.status_code == 200:
            result = resp.json()
            return result["candidates"][0]["content"]["parts"][0]["text"].strip()
        else:
            return f"API error {resp.status_code}: {resp.text}"
    except Exception as e:
        return f"Direct API call error: {str(e)}"

# ===== ROUTES =====
@app.get("/", tags=["health"])
def health_check():
    return {"status": "Chat API is running!", "version": "1.0.0"}

@app.post("/chat", response_model=ChatResponse, tags=["chat"])
def chat_with_ai(message: ChatMessage):
    """
    Main chat endpoint
    """
    try:
        ai_response = get_chat_response(message.message)
        return ChatResponse(
            response=ai_response,
            timestamp=datetime.now().isoformat()
        )
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Chat error: {str(e)}")

# ===== SERVER ENTRY =====
if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
