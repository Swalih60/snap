// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chipp extends StatelessWidget {
  String text;
  Chipp({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 30,
        width: 82,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color:
                Colors.white.withOpacity(0.5), // White border with transparency
            width: 1.5,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100), // Match border radius
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Blur effect
            child: Container(
              color:
                  Colors.white.withOpacity(0.1), // Transparent white background
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
