import 'package:flutter/material.dart';
import 'package:snap/components/data_profile_components.dart';

class DataProfileScreen extends StatelessWidget {
  const DataProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text(
          'Data Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                color: Color.fromRGBO(54, 57, 74, 1),
                thickness: 2,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/main.jpg'),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
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
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            Text(
                              'Bogor, Indonesia',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon:
                        const Icon(Icons.upload_file, color: Color(0xFF6B47DC)),
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
                ],
              ),
              const SizedBox(height: 10),
              const Divider(
                color: Color.fromRGBO(54, 57, 74, 1),
                thickness: 2,
              ),
              const Text(
                'Looking for',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Chip(
                label: Text(
                  'Ready for commitment',
                  style: TextStyle(color: Colors.blue),
                ),
                backgroundColor: Colors.white,
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(39, 40, 53, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        buildSectionTitle('About Me'),
                        const Text(
                          "Hi! I'm Fajar, a passionate traveler and food lover with a love for creativity. Whether it's exploring new destinations or trying out a new recipe.",
                          style: TextStyle(color: Colors.white70, height: 1.5),
                        ),
                        const Divider(
                          color: Color.fromRGBO(54, 57, 74, 1),
                          thickness: 2,
                        ),
                        buildSectionTitle('Profile'),
                        Column(
                          children: [
                            buildProfileItem(Icons.height, '165 cm (5\'5")'),
                            buildProfileItem(Icons.school,
                                'Bachelor\'s Degree in Marketing'),
                            buildProfileItem(Icons.person, 'Man'),
                            buildProfileItem(
                                Icons.language, 'English, Indonesian'),
                          ],
                        ),
                        const Divider(
                          color: Color.fromRGBO(54, 57, 74, 1),
                          thickness: 2,
                        ),
                        buildSectionTitle('Interest'),
                        Row(
                          children: [
                            buildInterestChip('Fashion'),
                            const SizedBox(width: 10),
                            buildInterestChip('Music'),
                            const SizedBox(width: 10),
                            buildInterestChip('Cooking'),
                          ],
                        ),
                        const Divider(
                          color: Color.fromRGBO(54, 57, 74, 1),
                          thickness: 2,
                        ),
                        const SizedBox(height: 5),
                        buildSectionTitle('Social Media'),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              buildSocialIcon(
                                  "assets/images/facebook.png", Colors.blue),
                              const SizedBox(width: 16),
                              buildSocialIcon(
                                  "assets/images/insta.png", Colors.pink),
                              const SizedBox(width: 16),
                              buildSocialIcon(
                                  "assets/images/tik.png", Colors.teal),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
