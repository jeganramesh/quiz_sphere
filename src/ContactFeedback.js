import React, { useState } from 'react';
import './ContactFeedback.css'; // We'll create this CSS file next

function ContactFeedback() {
  const [name, setName] = useState('');
  const [email, setEmail] = useState('');
  const [message, setMessage] = useState('');
  const [subject, setSubject] = useState('Feedback'); // Default subject

  const handleSubmit = (e) => {
    e.preventDefault();
    // Placeholder for form submission logic
    console.log('Form submitted:', { name, email, subject, message });
    alert('Thank you for your feedback! Functionality not yet implemented.');
    // Clear form after submission
    setName('');
    setEmail('');
    setSubject('Feedback');
    setMessage('');
  };

  return (
    <div className="contact-feedback-page">
      <header className="contact-feedback-header">
        <h1>Contact & Feedback</h1>
        <p>We'd love to hear from you! Reach out with your questions, feedback, or partnership inquiries.</p>
      </header>

      <div className="contact-content-wrapper">
        <div className="contact-form-section">
          <h2>Send Us a Message</h2>
          <form onSubmit={handleSubmit} className="contact-form">
            <div className="form-group">
              <label htmlFor="name">Name</label>
              <input
                type="text"
                id="name"
                value={name}
                onChange={(e) => setName(e.target.value)}
                required
              />
            </div>
            <div className="form-group">
              <label htmlFor="email">Email</label>
              <input
                type="email"
                id="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
              />
            </div>
            <div className="form-group">
              <label htmlFor="subject">Subject</label>
              <select
                id="subject"
                value={subject}
                onChange={(e) => setSubject(e.target.value)}
                required
              >
                <option value="Feedback">Feedback</option>
                <option value="Bug Report">Bug Report</option>
                <option value="Partnership Inquiry">Partnership Inquiry</option>
                <option value="General Question">General Question</option>
              </select>
            </div>
            <div className="form-group">
              <label htmlFor="message">Message</label>
              <textarea
                id="message"
                rows="6"
                value={message}
                onChange={(e) => setMessage(e.target.value)}
                required
              ></textarea>
            </div>
            <button type="submit" className="submit-btn">Send Message</button>
          </form>
        </div>

        <div className="contact-info-section">
          <h2>Get In Touch</h2>
          <div className="info-item">
            <i className="fas fa-envelope"></i>
            <div>
              <h3>Email</h3>
              <p>support@quizsphere.in</p>
            </div>
          </div>
          <div className="info-item">
            <i className="fas fa-map-marker-alt"></i>
            <div>
              <h3>Location</h3>
              <p>Rural & Semi-Urban Areas, India</p>
            </div>
          </div>
          <div className="info-item">
            <i className="fas fa-users"></i>
            <div>
              <h3>Social Media</h3>
              <div className="social-links">
                <a href="#" aria-label="Twitter"><i className="fab fa-twitter"></i></a>
                <a href="#" aria-label="Facebook"><i className="fab fa-facebook-f"></i></a>
                <a href="#" aria-label="LinkedIn"><i className="fab fa-linkedin-in"></i></a>
                <a href="#" aria-label="Instagram"><i className="fab fa-instagram"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default ContactFeedback;
