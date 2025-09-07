import google.generativeai as genai

# Put your API key here
GEMINI_API_KEY = "AIzaSyBKnQF0pEhrZCEu5T7WgKKHDzNcvn6ui5Y"
genai.configure(api_key=GEMINI_API_KEY)
model = genai.GenerativeModel("gemini-pro")

def get_chat_response(user_message: str) -> str:
    try:
        prompt = f"""
        You are a helpful AI assistant.
        User message: {user_message}
        
        Please provide a helpful, friendly response.
        """
        
        response = model.generate_content(prompt)
        return response.text.strip()
        
    except Exception as e:
        print(f"Error: {e}")
        return "Sorry, I'm having trouble responding right now."
