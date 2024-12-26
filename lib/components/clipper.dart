import 'package:flutter/material.dart';

class ChatButtonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height - 60);
    path.lineTo(size.width / 2 - 40, size.height - 60);
    path.quadraticBezierTo(size.width / 2, size.height - 100,
        size.width / 2 + 40, size.height - 60);
    path.lineTo(size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
