import requests

API_KEY = "AIzaSyC911NQEQSuSBh1FUQ9ACJRYXkbPL1XWRw"
API_URL = "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent"

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
