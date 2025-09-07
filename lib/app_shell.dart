import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import the home screen
import 'chat_screen.dart'; // Import the chat screen

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _selectedIndex = 0;

  // List of widgets to display each tab's contents
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(), // Home Screen
    ChatScreen(), // Chat Screen
    const Text(
      'Play Screen',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ), // Placeholder for Play
    const Text(
      'Leaderboard Screen',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ), // Placeholder for Leaderboard
    const Text(
      'Profile Screen',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ), // Placeholder for Profile
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, -5), // changes position of shadow
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xFF34D399), // Green for selected
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              label: 'Quizzes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.gamepad_outlined),
              label: 'Play',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard_outlined),
              label: 'Leaderboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
