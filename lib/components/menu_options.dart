import 'package:flutter/material.dart';

Widget buildMenuOption(IconData icon, String title, {bool isLogout = false}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 6),
    padding: EdgeInsets.symmetric(vertical: 8),
    decoration: BoxDecoration(
      color: Colors.transparent, // Optional: Background color if needed
      border: Border.all(
        color: Color.fromRGBO(54, 57, 74, 1), // Border color
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(100), // Optional: Rounded corners
    ),
    child: ListTile(
      leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            icon,
            color: isLogout ? Colors.red : Colors.black,
            size: 30,
          )),
      title: Text(
        title,
        style: TextStyle(
          color: isLogout ? Colors.red : Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      trailing: Transform.rotate(
        angle: 45 * 3.14159 / 180, // Rotate 45 degrees
        child: const Icon(
          Icons.arrow_upward,

          color: Colors.white, // Customize color
        ),
      ),
      onTap: () {
        // Handle navigation or actions here
      },
    ),
  );
}
