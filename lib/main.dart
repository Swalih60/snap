import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snap/components/bottom_nav.dart';
import 'package:snap/providers/bottom_nav_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavBar(),
        theme: ThemeData(
            floatingActionButtonTheme:
                FloatingActionButtonThemeData(elevation: 0)),
      ),
    );
  }
}
