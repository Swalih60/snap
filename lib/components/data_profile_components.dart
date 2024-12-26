import 'package:flutter/material.dart';

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
    backgroundColor: Color.fromRGBO(89, 69, 254, 1), // Purple color
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
          20), // Adjust the value for more rounded corners
    ),
  );
}

Widget buildSocialIcon(String link, Color color) {
  return Container(
    height: 50,
    width: 50,
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: Colors.white24,
      shape: BoxShape.circle,
    ),
    child: Image.asset(link),
  );
}
