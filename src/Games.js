import React from 'react';
import './Games.css'; // We'll create this CSS file next

function Games() {
  return (
    <div className="games-page">
      <header className="games-header">
        <h1>Mini-Games</h1>
        <p>Engage with fun, educational mini-games.</p>
      </header>

      <section className="games-grid">
        {/* Example Game Card 1 */}
        <div className="game-card">
          <img src="/game-previews/memory-match.png" alt="Memory Match Game" className="game-preview" />
          <h3>Memory Match</h3>
          <p>Sharpen your memory by matching pairs of educational concepts.</p>
          <div className="game-actions">
            <button className="play-btn">Play Now</button>
            <button className="learn-more-link">Learn More</button>
          </div>
        </div>

        {/* Example Game Card 2 */}
        <div className="game-card">
          <img src="/game-previews/quiz-challenge.png" alt="Quiz Challenge Game" className="game-preview" />
          <h3>Quiz Challenge</h3>
          <p>Test your knowledge with timed quizzes across various subjects.</p>
          <div className="game-actions">
            <button className="play-btn">Play Now</button>
            <button className="learn-more-link">Learn More</button>
          </div>
        </div>

        {/* Example Game Card 3 */}
        <div className="game-card">
          <img src="/game-previews/word-scramble.png" alt="Word Scramble Game" className="game-preview" />
          <h3>Word Scramble</h3>
          <p>Unscramble letters to form educational terms and boost your vocabulary.</p>
          <div className="game-actions">
            <button className="play-btn">Play Now</button>
            <button className="learn-more-link">Learn More</button>
          </div>
        </div>

        {/* Add more game cards as needed */}
      </section>
    </div>
  );
}

export default Games;
