import 'package:flutter/material.dart';
import 'package:google_clone/presentation/pages/searchbar_page.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({super.key});

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SearchbarPage()),
          );
        },
        child: Container(
          height: 80,
          width: 350,
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 39, 39, 39),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: [
              const Icon(Icons.search, color: Colors.grey, size: 28),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  'Search',
                  style: TextStyle(
                    color: Color.fromARGB(255, 218, 218, 218),
                    fontSize: 22,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.mic, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.camera_alt, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
