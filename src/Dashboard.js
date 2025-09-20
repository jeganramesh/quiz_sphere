import React from 'react';
import './Dashboard.css';
import { Link } from 'react-router-dom';

function Dashboard() {
  return (
    <div className="dashboard-bg">
      <nav className="navbar">
        <div className="logo-area">
          <img src="/favicon.ico" alt="Quiz Sphere Logo" className="logo" />
          <span className="brand">Quiz Sphere</span>
        </div>
        <ul className="nav-links">
          <li><Link to="/">Home</Link></li>
          <li><Link to="/dashboard" className="active">Dashboard</Link></li>
          <li><Link to="/leaderboard">Leaderboard</Link></li>
          <li><Link to="/subjects">Subjects</Link></li>
        </ul>
        <div className="nav-actions">
          <span className="notif-icon">🔔</span>
          <span className="profile-btn"> <span className="profile-icon">👤</span> Ananya </span>
        </div>
      </nav>
      <main className="dashboard-main">
        <h1>Welcome Ananya!</h1>
        <div className="dashboard-search">
          <input className="search-input" placeholder="Search" />
          <span className="search-icon">🔍</span>
        </div>
        <div className="dashboard-content">
          <section className="progress-section">
            <h2>Progress overview</h2>
            <div className="progress-item">
              <span>Mathematics</span>
              <div className="progress-bar"><div className="bar math" style={{width:'70%'}}></div></div>
              <span className="progress-label">70% complete</span>
            </div>
            <div className="progress-item">
              <span>Science</span>
              <div className="progress-bar"><div className="bar science" style={{width:'50%'}}></div></div>
              <span className="progress-label">50% complete</span>
            </div>
            <div className="progress-item">
              <span>Social</span>
              <div className="progress-bar"><div className="bar social" style={{width:'65%'}}></div></div>
              <span className="progress-label">65% complete</span>
            </div>
            <div className="progress-item">
              <span>English</span>
              <div className="progress-bar"><div className="bar english" style={{width:'80%'}}></div></div>
              <span className="progress-label">80% complete</span>
            </div>
          </section>
          <aside className="leaderboard-section">
            <h2>Leaderboard preview</h2>
            <div className="leaderboard-list">
              <div className="leaderboard-item"><span className="profile-icon">👤</span> Ravi <span className="points">1500 points</span> <span className="rank">1st</span></div>
              <div className="leaderboard-item"><span className="profile-icon">👤</span> Pooja <span className="points">1250 points</span> <span className="rank">2nd</span></div>
              <div className="leaderboard-item"><span className="profile-icon">👤</span> Ananya <span className="points">1100 points</span> <span className="rank">3rd</span></div>
              <div className="leaderboard-item"><span className="profile-icon">👤</span> Zoro <span className="points">1069 points</span> <span className="rank">4th</span></div>
            </div>
            <button className="viewall-btn">view all</button>
          </aside>
        </div>
        <section className="badges-section">
          <h2>Earned badges <button className="viewall-link">view all</button></h2>
          <div className="badges-list">
            <span className="badge star">★</span>
            <span className="badge rocket">🚀</span>
            <span className="badge book">📖</span>
            <span className="badge brain">🧠</span>
          </div>
        </section>
      </main>
    </div>
  );
}

export default Dashboard;
