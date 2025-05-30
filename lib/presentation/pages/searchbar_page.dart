import 'package:flutter/material.dart';
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
                        Navigator.pop(context);
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
                            icon: const Icon(Icons.mic, color: Colors.white),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.camera_alt,
                                color: Colors.white),
                            onPressed: () {},
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
