import 'package:flutter/material.dart';
import 'package:snap/screens/data_profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DataProfileScreen(),
      theme: ThemeData(
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(elevation: 0)),
    );
  }
}
