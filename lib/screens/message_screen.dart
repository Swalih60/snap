import 'package:flutter/material.dart';
import 'package:snap/components/chatTile.dart';
import 'package:snap/components/matchAvatar.dart';

class MessagingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Column(
          children: [
            // Recent Matches Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF6B47DC),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
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
                    SizedBox(height: 16),
                    SizedBox(
                      height: 100,
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
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.add, color: Colors.white),
                          label: Text("Request Dating"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white24,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Dating List"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE1BEE7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Color(0xFF6B47DC),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
          ),
        ],
      ),
    );
  }
}
