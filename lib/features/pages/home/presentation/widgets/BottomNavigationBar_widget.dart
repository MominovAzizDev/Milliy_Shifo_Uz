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
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label:"Bosh bo'lim"),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Kalendar',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_search_sharp), label: 'Shifokorlar'),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline_sharp),
            label: 'Dorixona',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
