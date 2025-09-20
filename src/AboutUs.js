import React from 'react';
import './AboutUs.css'; // We'll create this CSS file next

function AboutUs() {
  return (
    <div className="about-us-page">
      <header className="about-us-header">
        <h1>About Us</h1>
        <p>Meet the team behind Quiz Sphere and our mission.</p>
      </header>

      <section className="mission-section">
        <h2>Our Mission</h2>
        <p>Quiz Sphere aims to revolutionize learning by making it accessible, engaging, and fun for students everywhere. We believe in leveraging AI and gamification to empower learners, especially in underserved rural and semi-urban areas, to achieve their full potential.</p>
      </section>

      <section className="team-section">
        <h2>Team NOVA CODERS</h2>
        <div className="team-members-grid">
          {/* Example Team Member 1 */}
          <div className="team-member-card">
            <img src="/team-photos/member1.jpg" alt="Team Member 1" className="team-member-photo" />
            <h3>Alex Johnson</h3>
            <p className="role">Lead Developer</p>
            <p className="bio">Passionate about building scalable AI solutions and fostering educational access.</p>
          </div>

          {/* Example Team Member 2 */}
          <div className="team-member-card">
            <img src="/team-photos/member2.jpg" alt="Team Member 2" className="team-member-photo" />
            <h3>Maria Garcia</h3>
            <p className="role">Frontend Engineer</p>
            <p className="bio">Dedicated to creating intuitive and engaging user interfaces.</p>
          </div>

          {/* Example Team Member 3 */}
          <div className="team-member-card">
            <img src="/team-photos/member3.jpg" alt="Team Member 3" className="team-member-photo" />
            <h3>Sam Lee</h3>
            <p className="role">Backend Developer</p>
            <p className="bio">Expert in FastAPI and database management, ensuring robust API performance.</p>
          </div>

          {/* Example Team Member 4 */}
          <div className="team-member-card">
            <img src="/team-photos/member4.jpg" alt="Team Member 4" className="team-member-photo" />
            <h3>Priya Sharma</h3>
            <p className="role">UI/UX Designer</p>
            <p className="bio">Crafting delightful user experiences with a focus on accessibility and gamification.</p>
          </div>
          {/* Add more team members as needed */}
        </div>
      </section>

      <section className="journey-section">
        <h2>Our Hackathon Journey</h2>
        <p>Born from a passion for education and technology at the [Hackathon Name] hackathon, Team NOVA CODERS embarked on a journey to create Quiz Sphere. We envisioned a platform that could bridge educational gaps and make learning a winning experience for every student.</p>
      </section>
    </div>
  );
}

export default AboutUs;
