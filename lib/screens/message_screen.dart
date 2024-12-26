import 'package:flutter/material.dart';
import 'package:snap/components/chatTile.dart';
import 'package:snap/components/matchAvatar.dart';

class MessagingScreen extends StatelessWidget {
  const MessagingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Recent Matches Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF6B47DC),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Messages',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.search, color: Colors.white),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Recent Matches",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 110,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return buildMatchAvatar(
                              'Jennifer', 'assets/images/main.jpg', true);
                        },
                      ),
                    ),
                    // Recent Matches avatars
                    // Row(
                    //   children: [
                    //     buildMatchAvatar(
                    //         'Jennifer', 'assets/jennifer.png', true),
                    //     buildMatchAvatar('Ainun', 'assets/ainun.png', true),
                    //     buildMatchAvatar('Siti', 'assets/siti.png', true),
                    //     buildMatchAvatar('Nabila', 'assets/nabila.png', true),
                    //   ],
                    // ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.upload_file,
                              color: Color(0xFF6B47DC)),
                          label: const Text("Request Dating"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.list,
                            color: Colors.black,
                          ),
                          label: const Text(
                            "Dating List",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(210, 247, 2, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Chat",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            // Chat List Section
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return buildChatTile(
                      'Jennifer', 'How are you?', '5 min ago', '4', true);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
