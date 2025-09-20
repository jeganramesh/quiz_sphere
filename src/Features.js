import React from 'react';
import './Features.css'; // We'll create this CSS file next

function Features() {
  return (
    <div className="features-page">
      <header className="features-header">
        <h1>Our Features</h1>
        <p>Discover the innovative technologies powering Quiz Sphere.</p>
      </header>
      <section className="features-grid">
        <div className="feature-card">
          <img src="/icons/ai-quiz.svg" alt="AI Quiz Generation Icon" className="feature-icon" />
          <h3>AI Quiz Generation</h3>
          <p>Leveraging Gemini, Quiz Sphere creates dynamic quizzes tailored to your learning needs.</p>
        </div>
        <div className="feature-card">
          <img src="/icons/offline.svg" alt="Offline-first Architecture Icon" className="feature-icon" />
          <h3>Offline-First Architecture</h3>
          <p>Learn anytime, anywhere. Our app works seamlessly even without an internet connection.</p>
        </div>
        <div className="feature-card">
          <img src="/icons/multilingual.svg" alt="Multilingual Support Icon" className="feature-icon" />
          <h3>Multilingual Support</h3>
          <p>Breaking language barriers, Quiz Sphere is available in multiple languages.</p>
        </div>
        <div className="feature-card">
          <img src="/icons/gamification.svg" alt="Gamification Icon" className="feature-icon" />
          <h3>Gamification</h3>
          <p>Engage with badges, leaderboards, and points to make learning fun and competitive.</p>
        </div>
        <div className="feature-card">
          <img src="/icons/teacher-dashboard.svg" alt="Teacher Dashboard Icon" className="feature-icon" />
          <h3>Teacher Dashboard</h3>
          <p>Empower educators with tools to track student progress and manage learning.</p>
        </div>
        <div className="feature-card">
          <img src="/icons/tech-stack.svg" alt="Tech Stack Icon" className="feature-icon" />
          <h3>Robust Tech Stack</h3>
          <p>Built with Flutter for a smooth cross-platform experience and FastAPI for powerful backend APIs.</p>
        </div>
      </section>
    </div>
  );
}

export default Features;
