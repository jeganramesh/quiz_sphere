import requests
import os

API_KEY = os.environ.get("GEMINI_API_KEY", "") # Set your Gemini API key as an environment variable named GEMINI_API_KEYAIzaSyCjw6M9RjAB_UTb3giAwuHG_10SAEbKrBQ
def chat_with_gemini(prompt):
    headers = {"Content-Type": "application/json"}
    body = {
        "contents": [
            {"parts": [{"text": prompt}]}
        ]
    }

    response = requests.post(f"{API_URL}?key={API_KEY}", headers=headers, json=body)

    if response.status_code == 200:
        data = response.json()
        return data["candidates"][0]["content"]["parts"][0]["text"]
    else:
        return f"Error: {response.status_code}, {response.text}"


def main():
    print("🤖 Gemini Chatbot (type 'exit' to quit)")
    while True:
        user_input = input("You: ")
        if user_input.lower() in ["exit", "quit"]:
            print("Bot: Goodbye 👋")
            break

        reply = chat_with_gemini(user_input)
        print("Bot:", reply)


if __name__ == "__main__":
    main()
