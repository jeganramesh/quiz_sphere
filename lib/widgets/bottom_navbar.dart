import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 0.0),
            spreadRadius: 0.0,
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 8.0,
          ),
        ],
        color: Color.fromRGBO(255, 255, 255, 1.0),
      ),
      height: MediaQuery.of(context).size.height *
          0.15, // Adjusted height for two rows
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // First row: Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildIconItem(
                  context, 0, "assets/images/vector_133.svg"), // Home
              _buildIconItem(
                  context, 1, "assets/images/icon.svg"), // Quiz (pencil)
              _buildIconItem(context, 2,
                  "assets/images/group_3.svg"), // Challenge (clover)
              _buildIconItem(
                  context, 3, "assets/images/leaderboard.svg"), // Leaderboard
              _buildIconItem(
                  context, 4, "assets/images/profile_logo.svg"), // Profile
            ],
          ),
          // Second row: Labels
          Padding(
            padding:
                const EdgeInsets.only(top: 4.0), // Small padding between rows
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildLabel("Home", 0),
                _buildLabel("Quiz", 1),
                _buildLabel("Challenge", 2), // Add label for Challenge
                _buildLabel("Leaderboard", 3),
                _buildLabel("Profile", 4),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconItem(BuildContext context, int index, String iconPath) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: SvgPicture.asset(
        iconPath,
        width: 22.0,
        height: 22.0,
        colorFilter: ColorFilter.mode(
          selectedIndex == index
              ? Colors.blue
              : Colors.grey, // Highlight selected
          BlendMode.srcIn,
        ),
      ),
    );
  }

  Widget _buildLabel(String text, int index) {
    return Expanded(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 12.0,
          color: selectedIndex == index ? Colors.blue : Colors.grey,
        ),
      ),
    );
  }
}
