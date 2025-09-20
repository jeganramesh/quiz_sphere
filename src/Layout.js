import React, { useState } from 'react'; // Added useState for potential chat screen visibility
import { Link, Outlet } from 'react-router-dom';
import './Layout.css'; // We'll create this CSS file next
import AIlogo from './AIlogo.svg'; // Import the SVG icon from the public folder
import ChatScreen from './ChatScreen'; // Import the ChatScreen component

function Layout() {
  const [showChat, setShowChat] = useState(false); // State to control chat screen visibility

  const handleLogoClick = () => {
    // Logic to navigate to chat screen.
    // For now, we'll just log it. In a real app, this would involve routing.
    console.log("AI logo clicked, navigating to chat screen...");
    // Assuming a route for chat exists, e.g., '/chat'
    // If using React Router, you might use history.push('/chat') or navigate('/chat')
    // For this example, we'll just set state, assuming a conditional render or route change elsewhere.
    setShowChat(true);
  };
  return (
    <div className="app-layout">
      <nav className="navbar">
        <div className="logo-area">
          <img src="/icon.png" alt="Quiz Sphere Logo" className="logo" />
          <span className="brand">Quiz Sphere</span>
        </div>
        <ul className="nav-links">
          <li><Link to="/" className="nav-link">Home</Link></li>
          <li><Link to="/features" className="nav-link">Features</Link></li>
          <li><Link to="/leaderboard" className="nav-link">Leaderboard</Link></li>
          <li><Link to="/games" className="nav-link">Games</Link></li>
          <li><Link to="/about-us" className="nav-link">About Us</Link></li>
          <li><Link to="/contact" className="nav-link">Contact</Link></li>
        </ul>
        <div className="nav-actions">
          <Link to="/login-signup" className="login-btn">Login</Link>
          <Link to="/login-signup" className="signup-btn">Sign Up</Link>
        </div>
      </nav>
      <main className="main-content">
        <Outlet /> {/* This is where the routed page content will be rendered */}
      </main>
      {/* Floating AI Logo */}
      <div className="ai-logo-container" onClick={handleLogoClick}>
        <img src={AIlogo} alt="AI Logo" className="ai-logo-icon" />
      </div>
      <footer className="footer">Gamify your learning, amplify your knowledge.</footer>
    </div>
  );
}

export default Layout;
