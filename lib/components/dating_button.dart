import 'package:flutter/material.dart';

class DateButton extends StatelessWidget {
  const DateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.list,
        color: Colors.black,
      ),
      label: const Text(
        "Dating List",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(210, 247, 2, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
