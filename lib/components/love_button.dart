import 'package:flutter/material.dart';

class LoveButton extends StatelessWidget {
  const LoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.yellow,
      child: const Icon(
        Icons.favorite,
        color: Colors.black,
        size: 32,
      ),
    );
  }
}
