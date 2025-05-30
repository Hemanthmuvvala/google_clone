import 'package:flutter/material.dart';

class Listviews extends StatefulWidget {
  const Listviews({super.key});

  @override
  State<Listviews> createState() => _ListviewsState();
}

class _ListviewsState extends State<Listviews> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
  height: 80,
  width: double.infinity,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 3,
    itemBuilder: (context, index) {
      // Sample data for each container
      final titles = ['Air Quality 60', 'T20 Mini Cup', 'Noise Level 30'];
      final subtitles = ['Satisfactory', 'Starts soon', 'Low noise'];
      final icons = [
        Icon(Icons.water, color: Colors.white),
        Icon(Icons.sports_cricket, color: Colors.white),
        Icon(Icons.volume_up, color: Colors.white),
      ];
      final avatarColors = [Colors.green, Colors.red, Colors.blue];

      return Container(
        height: 50,
        width: 170,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromARGB(255, 74, 74, 74),
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text(
                titles[index],
                style:  TextStyle(color: Colors.white,fontSize:15,fontWeight:FontWeight.bold),
                
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  subtitles[index],
                  style: const TextStyle(color: Colors.white),
                ),
                CircleAvatar(
                  backgroundColor: avatarColors[index],
                  child: icons[index],
                  radius: 14,
                ),
              ],
            )
          ],
        ),
      );
    },
  ),
);
  }
}