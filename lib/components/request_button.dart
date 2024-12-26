import 'package:flutter/material.dart';

class ReqButton extends StatelessWidget {
  const ReqButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.upload_file, color: Color(0xFF6B47DC)),
      label: const Text("Request Dating"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
