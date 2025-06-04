import 'package:flutter/material.dart';
import 'package:google_clone/presentation/widgets/bottomnavigation.dart';
import 'package:google_clone/presentation/widgets/searchpage_history.dart';

class SearchbarPage extends StatefulWidget {
  const SearchbarPage({super.key});

  @override
  State<SearchbarPage> createState() => _SearchbarPageState();
}

class _SearchbarPageState extends State<SearchbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: 350,
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  autofocus: true,
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BottomnavigationBarCustom()));
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    hintText: 'Search',
                    hintStyle: const TextStyle(color: Colors.white),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            iconSize: 30,
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            icon: Image.asset(
                              'assets/images/mic.png',
                              width: 30,
                              height: 30,
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
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
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
              leading: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.schedule_outlined,
                  color: const Color.fromARGB(255, 99, 99, 99),
                  size: 20,
                ),
              ),
              title: Text(
                'jai babu slogan template',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const SearchpageHistory(
              searchHistory: 'who is hemanth  muvvala',
            ),
            const SearchpageHistory(
              searchHistory: 'who has most runs in ipl',
            ),
            const SearchpageHistory(
              searchHistory: 'chat gpt',
            ),
            const SearchpageHistory(
              searchHistory: 'today ipl match',
            ),
            const SearchpageHistory(
              searchHistory: 'Linked in',
            ),
           
          ],
        ),
      ),
    );
  }
}
