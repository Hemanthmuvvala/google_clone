import 'package:flutter/material.dart';

class Listtiles extends StatefulWidget {
  const Listtiles({super.key});

  @override
  State<Listtiles> createState() => _ListtilesState();
}

class _ListtilesState extends State<Listtiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        
        itemCount:2,
        itemBuilder: (context, index) {
        return const ListTile(
          dense: true,
          leading: Icon(
            Icons.schedule,
            color: Color.fromARGB(255, 99, 99, 99),
            size: 20,
          ),
          title: Text(
            'jai babu',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        );
      }),
    );
  }
}
