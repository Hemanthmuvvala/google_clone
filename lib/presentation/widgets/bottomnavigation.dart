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
  Widget _buildIcon(IconData icon, int index) {
    bool isSelected = currentIndex == index;

    if (isSelected) {
      return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.bounceOut,
        height: 30,
        width: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 202, 212, 249).withOpacity(0.3),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Icon(icon),
      );
    } else {
      return Icon(icon);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (position) {
         
          setState(() {
             currentIndex = position;
          });
        },
        elevation: 0,
        selectedItemColor: Color(0xFFAABFFF),
        //
        selectedLabelStyle:
            const TextStyle(fontSize: 12, height: 1), // SAME height
        unselectedLabelStyle: const TextStyle(fontSize: 12, height: 1),
        backgroundColor: Colors.grey[850],
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: _buildIcon(Icons.home, 0), label: 'Home'),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.search, 1),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.notifications_none, 2),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.schedule, 3),
            label: 'Activity',
          ),
        ],
      ),
    );
  }
}
