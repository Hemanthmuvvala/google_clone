import 'package:flutter/material.dart';
import 'package:google_clone/presentation/widgets/bottomnavigation.dart';

//import 'package:google_clone/presentation/pages/searchbar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // title: 'Flutter Demo',
      theme: ThemeData(
       
       
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner:false,
      home:  BottomnavigationBar(),
    );
  }
}

