import React, { useState, useEffect, useRef } from 'react';
import './ChatScreen.css'; // Changed to ChatScreen.css
// Make sure to install the 'marked' library: npm install marked
import { marked } from 'marked';

// Placeholder for API URL. In a real app, use environment variables.
// For local development, you can set this to your machine's local IP address.
// Example: const API_URL = "http://192.168.1.100:8000";
// Or, if running the backend on the same machine as the frontend, you might use "http://localhost:8000"
// If your API requires an API key, ensure it's set via REACT_APP_API_KEY environment variable and passed correctly.
const API_URL = process.env.REACT_APP_API_URL || "http://192.168.1.6:8000/chat"; // Default to the provided IP, but allow override via environment variable

function App() {
  const [messages, setMessages] = useState([
    {
      id: 1,
      text: "Hi there! Welcome to Quiz Sphere! Ready to test your knowledge and learn something new? Let's get quizzing! What subject are you interested in exploring today?",
      sender: "bot"
    }
  ]);
  const [input, setInput] = useState("");
  const [isGameView, setIsGameView] = useState(false); // State to manage view: chat or game
  const [isLoading, setIsLoading] = useState(false); // State for loading indicator
  const chatBoxRef = useRef(null);

  // Function to scroll to the bottom of the chat box
  useEffect(() => {
    if (chatBoxRef.current) {
      chatBoxRef.current.scrollTop = chatBoxRef.current.scrollHeight;
    }
  }, [messages, isGameView, isLoading]); // Re-scroll if view or loading state changes

  // Function to handle clicking the game icon
  const handleGameIconClick = () => {
    setIsGameView(true);
  };

  // Function to handle clicking the back button
  const handleBackButtonClick = () => {
    setIsGameView(false);
  };

  // Function to call the backend API
  async function callBackendApi(prompt) {
    setIsLoading(true); // Set loading to true before API call
    try {
      // The original code included '?key=${API_KEY}' which might be incorrect if API_KEY is not a valid key or if the backend doesn't expect it as a query parameter.
      // If your backend requires an API key, you might need to adjust this fetch call, e.g., by adding it to headers or as a different query parameter.
      const response = await fetch(API_URL, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          // If an API key is required, you might add it here:
          // "Authorization": `Bearer ${process.env.REACT_APP_API_KEY}`
        },
        body: JSON.stringify({ message: prompt, user_id: "react_user" }), // Updated body to match the provided snippet
      });

      if (response.ok) {
        const data = await response.json();
        // Adjust the parsing logic based on your backend's actual response structure.
        // The original structure was based on Gemini API.
        // Assuming the backend now returns a simple JSON like { "response": "..." }
        if (data && data.response) {
          return data.response;
        } else {
          console.error("Unexpected API response structure:", data);
          return "Sorry, I received an unexpected response from the API.";
        }
      } else {
        console.error("Error with API:", response.statusText);
        return `Sorry, there was an error with the API. Status: ${response.status}`;
      }
    } catch (error) {
      console.error("Fetch error:", error);
      return "Sorry, there was a network error.";
    } finally {
      setIsLoading(false); // Set loading to false after API call (success or failure)
    }
  }

  // Function to handle sending a message
  const sendMessage = async () => {
    if (input.trim() === "") return;

    const newUserMessage = {
      id: Date.now(),
      text: input,
      sender: "user"
    };

    setMessages(prevMessages => [...prevMessages, newUserMessage]);
    setInput(""); // Clear input field

    // Call backend API and display bot response
    const botResponseText = await callBackendApi(input);
    const newBotMessage = {
      id: Date.now() + 1, // Ensure unique ID
      text: botResponseText,
      sender: "bot"
    };
    setMessages(prevMessages => [...prevMessages, newBotMessage]);
  };

  // Handle Enter key press for sending message
  const handleKeyPress = (event) => {
    if (event.key === 'Enter' && !isLoading) { // Prevent sending if loading
      sendMessage();
    }
  };

  return (
    <div className="chat-container">
      <div className="chat-header">
        <div className="header-left">
          {isGameView && (
            <button onClick={handleBackButtonClick} className="header-button back-button">
              <i className="fas fa-arrow-left"></i>
            </button>
          )}
        </div>
        <div className="header-center">
          <i className="fas fa-robot"></i> {/* Robot/chat icon */}
          <h2>{isGameView ? "Game" : "Quiz Sphere Chat"}</h2>
        </div>
        <div className="header-right">
          {!isGameView && (
            <button onClick={handleGameIconClick} className="header-button game-button">
              <i className="fas fa-gamepad"></i>
            </button>
          )}
        </div>
      </div>
      {isGameView ? (
        <div className="game-container">
          {/* Placeholder for the game content */}
          <h1>Game Area</h1>
          <p>This is where the game will be played.</p>
          {/* You would integrate your game logic here */}
        </div>
      ) : (
        <div className="chat-box" ref={chatBoxRef}>
          {messages.map(message => (
            <div key={message.id} className={`chat-message ${message.sender}-message`}>
              <div className={`avatar ${message.sender}-avatar`}>
                {message.sender === "bot" ? <i className="fas fa-robot"></i> : <i className="fas fa-user"></i>}
              </div>
              {/* Render markdown for bot messages */}
              <p dangerouslySetInnerHTML={{ __html: message.sender === "bot" ? marked.parse(message.text) : message.text }} />
            </div>
          ))}
          {isLoading && (
            <div className="loading-indicator">
              <div className="avatar bot-avatar">
                <i className="fas fa-robot"></i>
              </div>
              <div className="loading-dots">
                <span></span>
                <span></span>
                <span></span>
              </div>
            </div>
          )}
        </div>
      )}
      {!isGameView && (
        <div className="input-container">
          <input
            type="text"
            id="userInput"
            placeholder="Type your message..."
            value={input}
            onChange={(e) => setInput(e.target.value)}
            onKeyPress={handleKeyPress}
            disabled={isLoading} /* Disable input when loading */
          />
          <button onClick={sendMessage} disabled={isLoading}> {/* Disable button when loading */}
            <i className="fas fa-paper-plane"></i>
          </button>
        </div>
      )}
    </div>
  );
}

export default App;
