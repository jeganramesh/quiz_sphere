import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Games zone'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {
              // Handle profile icon tap
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: const [
          GameCard(icon: Icons.timer, title: 'Quick Quiz'),
          GameCard(icon: Icons.calculate, title: 'Math Master'),
          GameCard(icon: Icons.mic, title: 'Speak & Solve'),
          GameCard(icon: Icons.extension, title: 'Puzzle Path'),
          GameCard(icon: Icons.balance, title: 'Fact or Fiction'),
          GameCard(icon: Icons.directions_run, title: 'Subject Sprint'),
          GameCard(icon: Icons.people, title: 'Friend Challenge'),
          GameCard(icon: Icons.headset, title: 'Badge Builder'),
        ],
      ),
    );
  }
}

class GameCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const GameCard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48.0, color: const Color(0xFF34D399)),
            const SizedBox(height: 16.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                // Handle "Play Now" button tap
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF34D399),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text('Play Now'),
            ),
          ],
        ),
      ),
    );
  }
}
