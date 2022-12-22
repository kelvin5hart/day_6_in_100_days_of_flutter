
import 'package:flutter/material.dart';

import '../data/constants.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'schedule_screen.dart';
import 'search_screen.dart';

class OverViewScreen extends StatefulWidget {
  const OverViewScreen({Key? key}) : super(key: key);

  @override
  State<OverViewScreen> createState() => _OverViewScreenState();
}

class _OverViewScreenState extends State<OverViewScreen> {
  int _currentScreen = 0;
  final List<Widget> screens = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const ScheduleScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreen,
        onTap: (int newScreen){
          setState(() {
            _currentScreen = newScreen;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: iconColor,
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Schedule"),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
      ],),
    );
  }
}
