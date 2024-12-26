import 'package:flutter/material.dart';
import 'package:snap/components/chatTile.dart';
import 'package:snap/components/dating_button.dart';
import 'package:snap/components/matchAvatar.dart';
import 'package:snap/components/request_button.dart';

class MessagingScreen extends StatelessWidget {
  const MessagingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                    const SizedBox(height: 16),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [ReqButton(), DateButton()],
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
