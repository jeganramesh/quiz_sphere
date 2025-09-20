import React from 'react';
import './Leaderboard.css'; // We'll create this CSS file next

function Leaderboard() {
  // Placeholder data for the leaderboard
  const leaderboardData = [
    { rank: 1, avatar: '/avatars/user1.png', name: 'Alice', points: 1500, school: 'Rural High', region: 'North' },
    { rank: 2, avatar: '/avatars/user2.png', name: 'Bob', points: 1450, school: 'Urban Academy', region: 'South' },
    { rank: 3, avatar: '/avatars/user3.png', name: 'Charlie', points: 1400, school: 'Rural High', region: 'North' },
    { rank: 4, avatar: '/avatars/user4.png', name: 'Diana', points: 1380, school: 'City School', region: 'East' },
    { rank: 5, avatar: '/avatars/user5.png', name: 'Ethan', points: 1350, school: 'Urban Academy', region: 'South' },
  ];

  // Placeholder for filter state
  const [selectedSubject, setSelectedSubject] = React.useState('All Subjects');
  const [selectedSchool, setSelectedSchool] = React.useState('All Schools');
  const [selectedRegion, setSelectedRegion] = React.useState('All Regions');

  // Filter options (example)
  const subjects = ['All Subjects', 'Math', 'Science', 'History'];
  const schools = ['All Schools', 'Rural High', 'Urban Academy', 'City School'];
  const regions = ['All Regions', 'North', 'South', 'East', 'West'];

  // Function to handle filter changes
  const handleFilterChange = (filterType, value) => {
    if (filterType === 'subject') setSelectedSubject(value);
    else if (filterType === 'school') setSelectedSchool(value);
    else if (filterType === 'region') setSelectedRegion(value);
  };

  // Filtered data (simplified for now, real implementation would be more complex)
  const filteredLeaderboard = leaderboardData.filter(entry =>
    (selectedSubject === 'All Subjects' || entry.subject === selectedSubject) &&
    (selectedSchool === 'All Schools' || entry.school === selectedSchool) &&
    (selectedRegion === 'All Regions' || entry.region === selectedRegion)
  );

  return (
    <div className="leaderboard-page">
      <header className="leaderboard-header">
        <h1>Leaderboard</h1>
        <p>See who's topping the charts!</p>
      </header>

      <div className="leaderboard-filters">
        <select value={selectedSubject} onChange={(e) => handleFilterChange('subject', e.target.value)}>
          {subjects.map(subject => <option key={subject} value={subject}>{subject}</option>)}
        </select>
        <select value={selectedSchool} onChange={(e) => handleFilterChange('school', e.target.value)}>
          {schools.map(school => <option key={school} value={school}>{school}</option>)}
        </select>
        <select value={selectedRegion} onChange={(e) => handleFilterChange('region', e.target.value)}>
          {regions.map(region => <option key={region} value={region}>{region}</option>)}
        </select>
      </div>

      <main className="leaderboard-main">
        {filteredLeaderboard.length > 0 ? (
          <table className="leaderboard-table">
            <thead>
              <tr>
                <th>Rank</th>
                <th>Avatar</th>
                <th>Name</th>
                <th>Points</th>
                <th>School</th>
                <th>Region</th>
              </tr>
            </thead>
            <tbody>
              {filteredLeaderboard.map((entry) => (
                <tr key={entry.rank}>
                  <td>{entry.rank}</td>
                  <td><img src={entry.avatar} alt={`${entry.name}'s avatar`} className="leaderboard-avatar" /></td>
                  <td>{entry.name}</td>
                  <td>{entry.points}</td>
                  <td>{entry.school}</td>
                  <td>{entry.region}</td>
                </tr>
              ))}
            </tbody>
          </table>
        ) : (
          <p className="no-results">No results found for the selected filters.</p>
        )}
      </main>
    </div>
  );
}

export default Leaderboard;
