import 'package:flutter/material.dart';

class DataProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Navigate back
          },
        ),
        title: Text(
          'Data Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header Section
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                      'assets/profile_picture.png'), // Replace with actual image
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Edit action
                  },
                  icon: Icon(Icons.edit, color: Color(0xFF6B47DC)),
                  label: Text(
                    'Edit',
                    style: TextStyle(color: Color(0xFF6B47DC)),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    side: BorderSide(color: Color(0xFF6B47DC)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Looking For Section
            Text(
              'Looking for',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 10),
            Chip(
              label: Text(
                'Ready for commitment',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color(0xFF6B47DC),
            ),
            SizedBox(height: 20),
            // About Me Section
            buildSectionTitle('About Me'),
            Text(
              "Hi! I'm Fajar, a passionate traveler and food lover with a love for creativity. Whether it's exploring new destinations or trying out a new recipe.",
              style: TextStyle(color: Colors.white70, height: 1.5),
            ),
            SizedBox(height: 20),
            // Profile Section
            buildSectionTitle('Profile'),
            Column(
              children: [
                buildProfileItem(Icons.height, '165 cm (5\'5")'),
                buildProfileItem(
                    Icons.school, 'Bachelor\'s Degree in Marketing'),
                buildProfileItem(Icons.person, 'Man'),
                buildProfileItem(Icons.language, 'English, Indonesian'),
              ],
            ),
            SizedBox(height: 20),
            // Interest Section
            buildSectionTitle('Interest'),
            Row(
              children: [
                buildInterestChip('Fashion'),
                SizedBox(width: 10),
                buildInterestChip('Music'),
                SizedBox(width: 10),
                buildInterestChip('Cooking'),
              ],
            ),
            SizedBox(height: 20),
            // Social Media Section
            buildSectionTitle('Social Media'),
            Row(
              children: [
                buildSocialIcon(Icons.facebook, Colors.blue),
                SizedBox(width: 16),
                buildSocialIcon(Icons.photo_camera, Colors.pink),
                SizedBox(width: 16),
                buildSocialIcon(Icons.music_note, Colors.teal),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget buildProfileItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white70),
          SizedBox(width: 16),
          Text(
            text,
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
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

  Widget buildSocialIcon(IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white24,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: color, size: 24),
    );
  }
}
