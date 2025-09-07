import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile Header
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, size: 40, color: Colors.white),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Ananya',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '@svirthrischool',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // Profile Options
              _buildProfileOption(
                icon: Icons.language,
                title: 'Language Toggle',
                trailingText: 'English',
              ),
              _buildProfileOption(
                icon: Icons.emoji_events_outlined,
                title: 'Badge Showcase',
              ),
              _buildProfileOption(
                icon: Icons.email_outlined,
                title: 'Email',
                trailingText: 'rex4dom@gmail.com',
              ),
              _buildProfileOption(
                icon: Icons.check_box_outlined,
                title: 'Offline Challenge/Quiz',
              ),
              _buildProfileOption(
                icon: Icons.upload_file_outlined,
                title: 'Uploaded Notes',
              ),
              _buildProfileOption(
                icon: Icons.campaign_outlined,
                title: 'Teacher Announcements',
              ),
              _buildProfileOption(
                icon: Icons.people_alt_outlined,
                title: 'Teacher Corner Access',
              ),
              const SizedBox(height: 50), // Space for the brain icon
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle brain icon tap
        },
        backgroundColor: const Color(0xFF34D399),
        child: const Icon(Icons.psychology_outlined, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildProfileOption({
    required IconData icon,
    required String title,
    String? trailingText,
  }) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: const Color(0xFF34D399)),
          title: Text(title),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (trailingText != null)
                Text(trailingText, style: const TextStyle(color: Colors.grey)),
              const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ],
          ),
          onTap: () {
            // Handle option tap
          },
        ),
        const Divider(height: 1, indent: 16, endIndent: 16),
      ],
    );
  }
}
