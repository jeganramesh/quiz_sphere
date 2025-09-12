import google.generativeai as genai

genai.configure(api_key="AIzaSyCjw6M9RjAB_UTb3giAwuHG_10SAEbKrBQ")
model = genai.GenerativeModel("gemini-pro")
resp = model.generate_content("Hello Gemini!")
print(resp.text)
