import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List _headLines = ['Times of India','Flutter','IPL:Miracles of 2025'];
  final List _realNews = ['Google CEO Sundar Pichai on his sleep goal: I try to.....',
  'Look at the new updates in flutter launched in google I/O event','RCB lifts the trophy.Ee saala cup namde to namduuu 🏆🏆.'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          PopupMenuButton(
            enabled:true,
              itemBuilder: (context) => [
                    const PopupMenuItem(
                        value: 'settings',
                        child: ListTile(
                          leading: Icon(Icons.notifications_none),
                          title: Text('Notification Badges'),
                        )),
                    const PopupMenuItem(
                      value: 'sendFeedback',
                      child: ListTile(
                        leading: Icon(Icons.feedback_sharp),
                        title: Text('send Feedback'),
                      ),
                    )
                  ])
        ],
        backgroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 3,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 130,
                  width: 280,
                  child: ListTile(
                    leading: Icon(
                      Icons.description_outlined,
                      color: Colors.blue[200],
                    ),
                    title: Text(_headLines[index]),
                    subtitle: Text(
                      _realNews[index],
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    trailing: Image.asset(
                      'assets/images/salaar.jpeg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
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
