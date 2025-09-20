import './App.css';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Layout from './Layout'; // Import the Layout component
import Home from './Home';
import Dashboard from './Dashboard'; // Assuming Dashboard component exists or will be created
import Features from './Features';
import Leaderboard from './Leaderboard';
import Games from './Games';
import DashboardPreview from './DashboardPreview';
import AboutUs from './AboutUs';
import LoginSignUp from './LoginSignUp';
// Removed BlogUpdates import
import ContactFeedback from './ContactFeedback';

function App() {
  return (
    <Router>
      <Routes>
        {/* Use Layout as a wrapper for all routes */}
        <Route path="/" element={<Layout />}>
          <Route index element={<Home />} /> {/* Home page is the index route */}
          <Route path="/dashboard" element={<Dashboard />} />
          <Route path="/features" element={<Features />} />
          <Route path="/leaderboard" element={<Leaderboard />} />
          <Route path="/games" element={<Games />} />
          <Route path="/dashboard-preview" element={<DashboardPreview />} />
          <Route path="/about-us" element={<AboutUs />} />
          {/* Removed Blog route */}
          <Route path="/contact" element={<ContactFeedback />} />
          {/* Add more routes as needed */}
        </Route>
      </Routes>
    </Router>
  );
}

export default App;
