import 'package:flutter/material.dart';

class CrossButton extends StatelessWidget {
  const CrossButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: const Color.fromRGBO(39, 40, 53, 1),
      child: const Icon(
        Icons.close,
        color: Colors.red,
        size: 32,
      ),
    );
  }
}
