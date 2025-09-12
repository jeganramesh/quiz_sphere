import os
import logging
from datetime import datetime
from typing import Optional

from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
import httpx  # async HTTP client

# ===== CONFIG =====
API_KEY = os.getenv("GEMINI_API_KEY", "").strip()
if not API_KEY:
    raise ValueError("⚠️ GEMINI_API_KEY is not set in environment variables!")

GEMINI_API_URL = (
    "https://generativelanguage.googleapis.com/v1beta/models/"
    "gemini-2.5-flash:generateContent"
)

# ===== LOGGING =====
logging.basicConfig(level=logging.WARNING)  # reduced log level for speed
logger = logging.getLogger("chat-backend")

# ===== FASTAPI APP =====
app = FastAPI(title="Gemini Chat Backend")

# Allow frontend access (open for dev, restrict in prod)
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["POST"],
    allow_headers=["*"],
)

# ===== MODELS =====
class ChatRequest(BaseModel):
    message: str
    user_id: Optional[str] = None

class ChatResponse(BaseModel):
    response: str
    timestamp: str

# ===== HTTPX CLIENT (reuse) =====
client = httpx.AsyncClient(timeout=15.0)  # reuse across requests

# ===== GEMINI DIRECT API =====
async def get_chat_response(prompt: str) -> str:
    payload = {"contents": [{"parts": [{"text": prompt}]}]}
    headers = {"Content-Type": "application/json"}

    try:
        resp = await client.post(
            f"{GEMINI_API_URL}?key={API_KEY}",
            headers=headers,
            json=payload,
        )
        if resp.status_code == 200:
            result = resp.json()
            return (
                result.get("candidates", [{}])[0]
                .get("content", {})
                .get("parts", [{}])[0]
                .get("text", "⚠️ Empty response")
                .strip()
            )
        return f"⚠️ Gemini API error: {resp.status_code} - {resp.text}"
    except Exception as e:
        logger.exception("Gemini API call failed")
        return f"⚠️ API call failed: {str(e)}"

# ===== ROUTES =====
@app.post("/chat", response_model=ChatResponse)
async def chat(req: ChatRequest):
    if not req.message or not req.message.strip():
        raise HTTPException(status_code=400, detail="Empty message")

    system_prompt = (
        "You are a helpful AI assistant for Quiz Sphere. "
        "Provide concise, clear, educational responses."
    )
    full_prompt = f"{system_prompt}\n\nUser message: {req.message.strip()}"

    bot_reply = await get_chat_response(full_prompt)

    return ChatResponse(
        response=bot_reply,
        timestamp=datetime.now().isoformat()
    )
