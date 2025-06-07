import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List _headLines = [
    'Times of India',
    'Flutter',
    'IPL:Miracles of 2025',
    'Unión Rayo',
    'Times of India',
  ];
  final List _realNews = [
    'Google CEO Sundar Pichai on his sleep goal: I try to.....',
    'Look at the new updates in flutter launched in google I/O event',
    'RCB lifts the trophy.Ee saala cup namde to namduuu 🏆🏆.',
    ' Goodbye to 8000 jobs - IBM replaces workers with artificial intelligence, sparking a wave of global reactions',
     "Google AI CEO Demis Hassabis: If I were a student right now, I would study ...",


  ];
  final List _imagesNews = [
    'assets/images/sundar.jpeg',
    'assets/images/flutter.png',
    'assets/images/kohli.jpeg',
    'assets/images/AI.jpeg',
    
    'assets/images/ibm.jpeg',


    
  ];
  final List<IconData> iconList = [
    Icons.newspaper,
    Icons.flutter_dash,
    Icons.sports_cricket,
    Icons.psychology_outlined,
    Icons.newspaper,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'settings',
                child: ListTile(
                  leading: Icon(Icons.notifications_none),
                  title: Text('Notification Badges'),
                ),
              ),
              const PopupMenuItem(
                value: 'sendFeedback',
                child: ListTile(
                  leading: Icon(Icons.feedback_sharp),
                  title: Text('Send Feedback'),
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.grey[900],
      ),
      body: Column(
        //mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          const Padding(
            padding:  EdgeInsets.only(left: 10.0),
            child: Text('Today'),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ListView.separated(
              itemCount: _headLines.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 2.0, vertical: 6),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Icon
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue.withOpacity(0.2),
                          ),
                          child: Icon(
                            iconList[index],
                            color: const Color.fromARGB(255, 144, 205, 255),
                            size: 25,
                          ),
                        ),
                        const SizedBox(width: 12),

                        // Text Content
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _headLines[index],
                                style:const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            const   SizedBox(height: 4),
                              Text(
                                _realNews[index],
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                             const SizedBox(height: 4),
                              const Text(
                                '2.30 AM',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              _imagesNews[index],
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            PopupMenuButton(
                              icon: const Icon(
                                Icons.more_vert,
                                color: Color.fromARGB(255, 165, 165, 165),
                                size: 20,
                              ),
                              onSelected: (value) {
                                if (value == 'delete') {}
                              },
                              itemBuilder: (context) => [
                                const PopupMenuItem(
                                  value: 'delete',
                                  child: Row(
                                    children: [
                                      Icon(Icons.delete),
                                      SizedBox(width: 8),
                                      Text('Delete'),
                                    ],
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 'notInterested',
                                  child: Row(
                                    children: [
                                      Icon(Icons.notifications_off_outlined),
                                      SizedBox(width: 8),
                                      Text('Not interested in this'),
                                    ],
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 'feedback',
                                  child: Row(
                                    children: [
                                      Icon(Icons.feedback_outlined),
                                      SizedBox(width: 8),
                                      Text('Send Feedback'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(
                height: 1,
                color: Color.fromARGB(255, 148, 148, 148),
                thickness: 0.5,
                indent: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
