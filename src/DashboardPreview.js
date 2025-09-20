import React from 'react';
import './DashboardPreview.css'; // We'll create this CSS file next

function DashboardPreview() {
  return (
    <div className="dashboard-preview-page">
      <header className="dashboard-preview-header">
        <h1>Dashboard Previews</h1>
        <p>Get a glimpse of the student and teacher dashboards.</p>
      </header>

      <section className="dashboard-sections">
        {/* Student Dashboard Preview */}
        <div className="dashboard-card student-dashboard">
          <h2>Student Dashboard</h2>
          <div className="dashboard-content">
            <div className="progress-section">
              <h3>Overall Progress</h3>
              <div className="progress-bar-container">
                <div className="progress-bar" style={{ width: '75%' }}>75%</div>
              </div>
            </div>
            <div className="badges-section">
              <h3>Your Badges</h3>
              <div className="badges-grid">
                <span className="badge-icon">🏆</span>
                <span className="badge-icon">⭐</span>
                <span className="badge-icon">🚀</span>
                {/* More badge icons */}
              </div>
            </div>
            <div className="recent-activity">
              <h3>Recent Activity</h3>
              <ul>
                <li>Completed "Algebra Basics" quiz</li>
                <li>Earned "Math Whiz" badge</li>
                <li>Started "World History" module</li>
              </ul>
            </div>
          </div>
        </div>

        {/* Teacher Dashboard Preview */}
        <div className="dashboard-card teacher-dashboard">
          <h2>Teacher Dashboard</h2>
          <div className="dashboard-content">
            <div className="analytics-section">
              <h3>Class Mastery</h3>
              <div className="analytics-chart-placeholder">
                {/* Placeholder for a chart showing chapter mastery */}
                <p>[Chapter Mastery Chart Placeholder]</p>
              </div>
            </div>
            <div className="quiz-attempts">
              <h3>Quiz Attempts Overview</h3>
              <p><strong>Total Attempts:</strong> 150</p>
              <p><strong>Average Score:</strong> 82%</p>
              <p><strong>Most Attempted Subject:</strong> Science</p>
            </div>
            <div className="student-overview">
              <h3>Student Overview</h3>
              <p><strong>Active Students:</strong> 25</p>
              <p><strong>Students Needing Attention:</strong> 3</p>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
}

export default DashboardPreview;
