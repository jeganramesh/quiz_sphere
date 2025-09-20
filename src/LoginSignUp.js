import React, { useState } from 'react';
import './LoginSignUp.css'; // We'll create this CSS file next

function LoginSignUp() {
  const [isLogin, setIsLogin] = useState(true); // Toggle between login and signup form
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [role, setRole] = useState('student'); // Default role

  const handleLoginSubmit = (e) => {
    e.preventDefault();
    // Placeholder for login logic
    console.log('Login attempt:', { email, password });
    alert('Login functionality not yet implemented.');
  };

  const handleSignUpSubmit = (e) => {
    e.preventDefault();
    // Placeholder for signup logic
    console.log('Sign Up attempt:', { email, password, role });
    alert('Sign Up functionality not yet implemented.');
  };

  return (
    <div className="auth-page">
      <div className="auth-container">
        <div className="auth-header">
          <h1>{isLogin ? 'Welcome Back!' : 'Join Quiz Sphere'}</h1>
          <p>{isLogin ? 'Login to continue your learning journey.' : 'Sign up to start your educational adventure.'}</p>
        </div>

        <div className="auth-form-wrapper">
          <div className="auth-toggle-buttons">
            <button
              className={isLogin ? 'active' : ''}
              onClick={() => setIsLogin(true)}
            >
              Login
            </button>
            <button
              className={!isLogin ? 'active' : ''}
              onClick={() => setIsLogin(false)}
            >
              Sign Up
            </button>
          </div>

          {isLogin ? (
            <form onSubmit={handleLoginSubmit} className="auth-form">
              <div className="form-group">
                <label htmlFor="login-email">Email</label>
                <input
                  type="email"
                  id="login-email"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  required
                />
              </div>
              <div className="form-group">
                <label htmlFor="login-password">Password</label>
                <input
                  type="password"
                  id="login-password"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  required
                />
              </div>
              <button type="submit" className="auth-submit-btn">Login</button>
            </form>
          ) : (
            <form onSubmit={handleSignUpSubmit} className="auth-form">
              <div className="form-group">
                <label htmlFor="signup-email">Email</label>
                <input
                  type="email"
                  id="signup-email"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  required
                />
              </div>
              <div className="form-group">
                <label htmlFor="signup-password">Password</label>
                <input
                  type="password"
                  id="signup-password"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  required
                />
              </div>
              <div className="form-group">
                <label>Role</label>
                <div className="role-selection">
                  <label>
                    <input
                      type="radio"
                      name="role"
                      value="student"
                      checked={role === 'student'}
                      onChange={(e) => setRole(e.target.value)}
                    />
                    Student
                  </label>
                  <label>
                    <input
                      type="radio"
                      name="role"
                      value="teacher"
                      checked={role === 'teacher'}
                      onChange={(e) => setRole(e.target.value)}
                    />
                    Teacher
                  </label>
                </div>
              </div>
              <button type="submit" className="auth-submit-btn">Sign Up</button>
            </form>
          )}
        </div>
      </div>
    </div>
  );
}

export default LoginSignUp;
