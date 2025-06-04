import 'package:flutter/material.dart';
import 'package:google_clone/presentation/pages/activity.dart';
import 'package:google_clone/presentation/pages/homepage.dart';
import 'package:google_clone/presentation/pages/notification.dart';
import 'package:google_clone/presentation/pages/searchbar_page.dart';

class BottomnavigationBarCustom extends StatefulWidget {
  const BottomnavigationBarCustom({super.key});

  @override
  State<BottomnavigationBarCustom> createState() =>
      _BottomnavigationBarCustomState();
}

class _BottomnavigationBarCustomState extends State<BottomnavigationBarCustom> {
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
      return Container(
        // duration: Duration(milliseconds: 500),
        // curve: Curves.bounceIn,
        height: 30,
        width: 60,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 173, 189, 246).withOpacity(0.25),
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
            icon: Stack(
              children: [
                _buildIcon(Icons.notifications_none, 2),
                // Positioned(
                //   top: 0.5,
                //   left: 10,
                 
                //   child: Container(
                //     height: 13.5,
                //     width: 13.5,
                //     decoration: BoxDecoration(
                //       color: Color.fromARGB(255, 180, 124, 104),
                //       borderRadius: BorderRadius.circular(30),
                //     ),
                //     child: Center(
                //       child: Text(
                //         '3',
                //         style: TextStyle(fontSize: 10), // small font for badge
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
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
