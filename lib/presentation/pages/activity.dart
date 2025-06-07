import 'package:flutter/material.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  final List _imagesNews = [
    'assets/images/sundar.jpeg',
    'assets/images/flutter.png',
    'assets/images/kohli.jpeg',
    'assets/images/AI.jpeg',
    'assets/images/ibm.jpeg',
  ];
  final List _headLines = [
    'Material Symbols and Icons',
    'material icons',
    'flutter',
    'sundar pichai',
    'AI IBM News',
  ];
  final List _subtitles = [
    'Fri, Jun 6 11:32 AM · fonts.google.com',
    'Fri, Jun 6 11:32 AM · www.google.com',
    'Fri, Jun 6 11:18 AM · www.google.com',
    'Fri, Jun 6 10:28 AM · www.google.com',
    'Fri, Jun 6 10:15 AM · www.ibm.com',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[950],
      appBar: AppBar(
        title: const Text('Activity screen'),
        backgroundColor: Colors.grey[950],
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
          const  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Text(
                    'History',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
                 Spacer(),
                Row(
                  children:  [
                    Text(
                      '100 items',
                      style: TextStyle(color: Colors.white70),
                    ),
                    Icon(Icons.chevron_right, color: Colors.white70),
                  ],
                ),
                SizedBox(width: 10),
              ],
            ),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    color: const Color.fromARGB(255, 27, 27, 27),
                    child: ListTile(
                      leading: ClipOval(
                        child: Image.asset(
                          _imagesNews[index],
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        _headLines[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        _subtitles[index],
                        style: const TextStyle(
                            color: Colors.white60, fontSize: 12),
                      ),
                      trailing: const Icon(
                        Icons.more_vert_outlined,
                        color: Colors.white70,
                      ),
                    ),
                  );
                },
              ),
            ),
          const  Padding(
              padding:  EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Saved Items',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Spacer(),
                  Icon(
                    Icons.chevron_right_outlined,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // Images
                    ..._imagesNews.map((image) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              image,
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                    // View All button at the end
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical:70),
                      child:Column(
                        children: [
                          Container(
                            height:40,
                            width:70,
                            decoration:BoxDecoration(
                              color:Colors.grey.withOpacity(0.1),
                              borderRadius:BorderRadius.circular(30),
                            ),
                            child:const Icon(Icons.chevron_right_rounded)),
                           const Text('view all'),
                        ],
                      )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
