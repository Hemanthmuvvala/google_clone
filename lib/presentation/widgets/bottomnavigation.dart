import 'package:flutter/material.dart';
import 'package:google_clone/presentation/pages/activity.dart';
import 'package:google_clone/presentation/pages/homepage.dart';
import 'package:google_clone/presentation/pages/notification.dart';
import 'package:google_clone/presentation/pages/searchbar_page.dart';

class BottomnavigationBar extends StatefulWidget {
  const BottomnavigationBar({super.key});

  @override
  State<BottomnavigationBar> createState() => _BottomnavigationBarState();
}

class _BottomnavigationBarState extends State<BottomnavigationBar> {
  final List<Widget> screens = [
    const Homepage(),
    const SearchbarPage(),
    const NotificationScreen(),
    const ActivityScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (position) {
          currentIndex = position;
          setState(() {
            
          });
        },
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: 'notifications'),
             BottomNavigationBarItem(icon: Icon(Icons.schedule),label:'activity'),
        ],
      ),
    );
  }
}
