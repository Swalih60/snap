import 'package:flutter/material.dart';

Widget buildMatchAvatar(String name, String avatarPath, bool online) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(avatarPath),
            ),
            if (online)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: 6),
        Column(
          children: [
            Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "5 min ago",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    ),
  );
}
