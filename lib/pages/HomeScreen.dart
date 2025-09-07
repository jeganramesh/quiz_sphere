import 'package:flutter/material.dart';

// Import your screens
import 'chatpagequiz.dart';
import 'Leaderboardpage.dart';
import 'Profile.dart';
import 'lessonspage1.dart';
import '../widgets/bottom_navbar.dart'; // Import the new BottomNavBar widget

class HomeScreen extends StatefulWidget {
  final int initialIndex;

  const HomeScreen({super.key, this.initialIndex = 0});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  final List<Widget> _pages = [
    const lessonspage1(), // Home (Index 0)
    const chatpagequiz(), // Quiz (Index 1)
    const Center(
        child: Text("Challenge Page")), // Placeholder for Challenge (Index 2)
    const Leaderboardpage(), // Leaderboard (Index 3)
    const Profile(), // Profile (Index 4)
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
