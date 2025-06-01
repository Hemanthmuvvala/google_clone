import 'package:flutter/material.dart';
import 'package:google_clone/presentation/pages/homepage.dart';

class SearchbarPage extends StatefulWidget {
  const SearchbarPage({super.key});

  @override
  State<SearchbarPage> createState() => _SearchbarPageState();
}

class _SearchbarPageState extends State<SearchbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: 350,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  autofocus: true,
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>const Homepage()));
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            iconSize: 30,
                            padding: EdgeInsets.zero,
                            constraints:const BoxConstraints(),
                            icon: Image.asset(
                              'assets/images/mic.png',
                              width: 30, // Set image width
                              height: 30, // Set image height
                              fit: BoxFit.contain,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            onPressed: () {},
                            iconSize: 30,
                            constraints: BoxConstraints(),
                            padding: EdgeInsets.zero,
                            icon: Image.asset(
                              'assets/images/lens.png',
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              dense: true,
              leading: Icon(
                Icons.schedule,
                color: const Color.fromARGB(255, 99, 99, 99),
                size: 20,
              ),
              title: Text(
                'jai babu',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            //Expanded(child: Listtiles()),
          ],
        ),
      ),
    );
  }
}
