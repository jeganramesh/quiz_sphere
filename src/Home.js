import React from 'react';
import './Home.css';
// Removed Link import as navigation is now handled by Layout

function Home() {
  return (
    <div className="home-bg">
      {/* Navbar and Footer are now handled by the Layout component */}
      <main className="hero-section">
        <div className="hero-text">
          <h1>
            <span className="orange">Turn Chapters into</span><br />
            <span className="white">Challenges and</span><br />
            <span className="orange">Learning into</span> <span className="white">Winning</span>
          </h1>
          <p className="intro-text">Quiz Sphere is an AI-powered, gamified learning platform designed to make education engaging and accessible, especially for students in rural and semi-urban areas. Turn your study sessions into exciting challenges and learning into a rewarding experience.</p>
          <button className="start-btn">Start Learning</button>
        </div>
        <div className="hero-illustration">
          {/* Placeholder for animated illustrations/SVGs like books, rocket, badges */}
          <img src="/hero-illustration.png" alt="Learning Illustration" style={{width:'350px'}} />
        </div>
        <div className="hero-badges">
          {/* Placeholder for animated badge unlock effects */}
          <div className="badge racecar">Race Car<br /><span>Gamified Environment</span></div>
          <div className="badge reward">Congratulations<br /><span>You Got a reward</span></div>
        </div>
      </main>
    </div>
  );
}

export default Home;
