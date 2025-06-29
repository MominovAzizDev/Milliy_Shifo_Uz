import 'package:flutter/material.dart';

import 'package:milliy_shifo/features/pages/MSheducation/presentation/pages/splash_screen.dart';
import 'package:milliy_shifo/features/pages/chats/presentation/pages/chat_pages.dart';
import 'package:milliy_shifo/features/pages/home/presentation/pages/homepage.dart';
import 'package:milliy_shifo/features/pages/profile%20copy/presentation/pages/profiles.dart';
import 'package:milliy_shifo/features/pages/records/presentation/pages/recordsPage.dart';

class BottomnavigationbarWidget extends StatefulWidget {
  @override
  _BottomnavigationbarWidgetState createState() =>
      _BottomnavigationbarWidgetState();
}

class _BottomnavigationbarWidgetState extends State<BottomnavigationbarWidget> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Homepage(),
    Recordspage(),
    ChatPages(),
    SplashScreen(),
    Profiles(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy_rounded),
            label: 'Records',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(
            icon: Icon(Icons.cast_for_education),
            label: 'Education',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
