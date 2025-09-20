import React from 'react';
import { Link, Outlet } from 'react-router-dom';
import './Layout.css';
import AIlogo from './AIlogo.svg';

function Layout() {
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
      <Link to="/chat" className="ai-logo-container">
        <img src={AIlogo} alt="AI Logo" className="ai-logo-icon" />
      </Link>
      <footer className="footer">Gamify your learning, amplify your knowledge.</footer>
    </div>
  );
}

export default Layout;
