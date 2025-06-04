import 'package:flutter/material.dart';
import 'package:google_clone/presentation/widgets/containers.dart';
import 'package:google_clone/presentation/widgets/listviews.dart';
import 'package:google_clone/presentation/widgets/newscards.dart';
import 'package:google_clone/presentation/widgets/searchbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final fixedsizedBox = const SizedBox(
    height: 15,
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   //   backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.science,
                    color: Colors.white,
                    size: 35,
                  ),
                  CircleAvatar(
                    radius: 18,
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.red,
                    child: Text(
                      'h',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Center(
                child: Text(
              'Google',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            )),
            SizedBox(
              height: 35,
            ),
            const Searchbar(),
            fixedsizedBox,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainersButtons(
                    onTapPress: () {},
                    containerColor: const Color.fromARGB(104, 244, 227, 75),
                    containerIcon: const Icon(Icons.image_outlined),
                  ),
                  ContainersButtons(
                    onTapPress: () {},
                    containerColor: const Color.fromARGB(255, 49, 95, 133),
                    containerIcon: const Icon(Icons.translate),
                  ),
                  ContainersButtons(
                    onTapPress: () {},
                    containerColor: const Color.fromARGB(255, 37, 77, 39),
                    containerIcon: const Icon(
                      Icons.school_outlined,
                      color: Colors.green,
                    ),
                  ),
                  ContainersButtons(
                    onTapPress: () {},
                    containerColor: const Color.fromARGB(255, 169, 104, 82),
                    containerIcon: const Icon(
                      Icons.music_note,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: const Color.fromARGB(255, 74, 74, 74),
            ),
            const Listviews(),
            fixedsizedBox,
            const NewsCard(),
            const NewsCard(),
            const NewsCard(),
          ],
        ),
      ),
    );
  }
}
