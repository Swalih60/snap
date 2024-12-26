import 'package:flutter/material.dart';
import 'package:snap/components/data_profile_components.dart';
import 'package:snap/components/menu_options.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.upload_file, color: Color(0xFF6B47DC)),
              label: const Text(
                'Edit',
                style: TextStyle(color: Color(0xFF6B47DC)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                side: const BorderSide(color: Color(0xFF6B47DC)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Profile Header
              Container(
                margin: const EdgeInsets.all(12.0),
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF6B47DC),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/main.jpg'),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Fajar Kun',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Bogor, Indonesia',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildSocialIcon(
                            "assets/images/facebook.png", Colors.blue),
                        const SizedBox(width: 16),
                        buildSocialIcon("assets/images/insta.png", Colors.pink),
                        const SizedBox(width: 16),
                        buildSocialIcon("assets/images/tik.png", Colors.teal),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Interest',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        buildInterestChip('Fashion'),
                        const SizedBox(width: 10),
                        buildInterestChip('Music'),
                        const SizedBox(width: 10),
                        buildInterestChip('Cooking'),
                      ],
                    ),
                  ],
                ),
              ),

              buildMenuOption(Icons.person, 'Data Profile'),
              buildMenuOption(Icons.language, 'Language'),
              buildMenuOption(Icons.dark_mode, 'Dark Mode'),

              buildMenuOption(Icons.logout, 'Logout', isLogout: true),
            ],
          ),
        ),
      ),
    );
  }
}
