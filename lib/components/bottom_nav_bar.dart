import 'package:flutter/material.dart';
import '../views/home_page.dart';
import '../views/classes_page.dart';
import '../views/announcement_page.dart';
import '../views/profile_page.dart';
import '../utils/theme/themes.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  // List of pages to navigate
  final List<Widget> _pages = const [
    HomePage(),
    ClassesPage(),
    AnnouncementPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppThemes.lightTheme.primaryColor,   // selected icon color
        unselectedItemColor: Colors.grey,       // unselected icon color
        selectedIconTheme: const IconThemeData(size: 32),   // increase size
        unselectedIconTheme: const IconThemeData(size: 28), // slightly smaller
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore_rounded), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_rounded), label: "Class"),
          BottomNavigationBarItem(icon: Icon(Icons.email_rounded), label: "Noties"),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: "Profile"),
        ],
      ),
    );
  }
}
