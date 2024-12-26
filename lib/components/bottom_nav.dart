import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart'; // Make sure this import is correct
import 'package:provider/provider.dart';
import 'package:snap/providers/bottom_nav_provider.dart';
import 'package:snap/screens/data_profile.dart';
import 'package:snap/screens/home_screen.dart';
import 'package:snap/screens/message_screen.dart';
import 'package:snap/screens/profile_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final List<Widget> _pages = [
    const HomeScreen(),
    const DataProfileScreen(),
    const MessagingScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BottomProvider>();
    return Scaffold(
      extendBody: true,
      body: _pages[provider.currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 5.0), // Padding from all sides
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            constraints: const BoxConstraints(
              minHeight: 70,
            ),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(39, 40, 53, 1),
              borderRadius: BorderRadius.circular(40), // More rounded corners
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GNav(
                activeColor: Colors.white,
                color: Colors.white,
                iconSize: 30,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                selectedIndex: provider.currentIndex,
                onTabChange: (index) {
                  context.read<BottomProvider>().changeIndex(index: index);
                },
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                    backgroundColor: const Color.fromRGBO(89, 69, 254, 1),
                    iconActiveColor: Colors.white,
                    textColor: Colors.white,
                  ),
                  GButton(
                    icon: Icons.location_on,
                    text: 'Data',
                    backgroundColor: const Color.fromRGBO(89, 69, 254, 1),
                    iconActiveColor: Colors.white,
                    textColor: Colors.white,
                  ),
                  GButton(
                    icon: Icons.message,
                    text: 'Message',
                    backgroundColor: const Color.fromRGBO(89, 69, 254, 1),
                    iconActiveColor: Colors.white,
                    textColor: Colors.white,
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                    backgroundColor: const Color.fromRGBO(89, 69, 254, 1),
                    iconActiveColor: Colors.white,
                    textColor: Colors.white,
                  ),
                ],
                backgroundColor: const Color.fromRGBO(39, 40, 53, 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
