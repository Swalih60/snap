import 'package:flutter/material.dart';

Widget buildChatTile(
    String name, String message, String time, String unreadCount, bool online) {
  return ListTile(
    leading: Stack(
      children: [
        // Container wrapping CircleAvatar to add border
        Container(
          padding: EdgeInsets.all(2), // Border thickness
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: Color.fromRGBO(89, 69, 254, 1),
                width: 2), // Border color and thickness
          ),
          child: CircleAvatar(
            maxRadius: 25,
            backgroundImage: AssetImage('assets/images/main.jpg'),
          ),
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
    title: Text(
      name,
      style: TextStyle(color: Colors.white),
    ),
    subtitle: Text(
      message,
      style: TextStyle(color: Colors.grey),
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(time, style: TextStyle(color: Colors.grey)),
        if (int.parse(unreadCount) > 0)
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF6B47DC),
            ),
            child: Text(
              unreadCount,
              style: TextStyle(color: Colors.white),
            ),
          ),
      ],
    ),
  );
}
