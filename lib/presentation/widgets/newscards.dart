import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({super.key});

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 32, 32, 32),
      margin: const EdgeInsets.all(5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TOI Logo and Title
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                // TOI red circle
                Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: Text(
                      "TOI",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "Times of India",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/salaar.jpeg', // Use your asset path
              fit: BoxFit.cover,
              width: double.infinity,
              height: 180,
            ),
          ),

          // Headline
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Salaar is the  top most viewed movie in the netflix till now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),

          // Timestamp and Heart Icon Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "13h",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : Colors.grey,
                    size: 20,
                  ),
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                ),
               // IconButton(onPressed:(){}, icon:Icon(Icons.more_vert))
              ],
            ),
          ),
        ],
      ),
    );
  }
}