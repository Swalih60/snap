import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text('Profile', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit, color: Colors.white),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Profile Header
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFF6B47DC),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                        'assets/profile_picture.png'), // Replace with actual image path
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Fajar Kun',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Bogor, Indonesia',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSocialIcon(Icons.facebook, Colors.blue),
                      SizedBox(width: 10),
                      buildSocialIcon(Icons.photo_camera, Colors.pink),
                      SizedBox(width: 10),
                      buildSocialIcon(Icons.music_note, Colors.teal),
                    ],
                  ),
                ],
              ),
            ),
            // Interests Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Interest',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      buildInterestChip('Fashion'),
                      SizedBox(width: 10),
                      buildInterestChip('Music'),
                      SizedBox(width: 10),
                      buildInterestChip('Cooking'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Menu Options
            buildMenuOption(Icons.person, 'Data Profile'),
            buildMenuOption(Icons.language, 'Language'),
            buildMenuOption(Icons.dark_mode, 'Dark Mode'),
            // Logout Button
            buildMenuOption(Icons.logout, 'Logout', isLogout: true),
          ],
        ),
      ),
    );
  }

  Widget buildSocialIcon(IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white24,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: color, size: 24),
    );
  }

  Widget buildInterestChip(String label) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Color(0xFF6B47DC),
    );
  }

  Widget buildMenuOption(IconData icon, String title, {bool isLogout = false}) {
    return ListTile(
      leading: Icon(icon, color: isLogout ? Colors.red : Colors.white),
      title: Text(
        title,
        style: TextStyle(
          color: isLogout ? Colors.red : Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: isLogout ? Colors.red : Colors.white,
        size: 16,
      ),
      onTap: () {
        // Handle navigation or actions here
      },
    );
  }
}
