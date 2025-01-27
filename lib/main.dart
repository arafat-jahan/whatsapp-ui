import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4, // Number of tabs
        child: WhatsAppCallsScreen(),
      ),
    );
  }
}

class WhatsAppCallsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> recentCalls = [
    {
      'name': 'Md. Ozaer Hossain',
      'image': 'assets/ozaer.jpg',
      'callType': Icons.call,
      'direction': Icons.arrow_downward,
      'color': Colors.green,
    },
    {
      'name': 'Nazmus Awarko',
      'image': 'assets/nazmus.jpg',
      'callType': Icons.call,
      'direction': Icons.arrow_upward,
      'color': Colors.red,
    },
    {
      'name': 'Zarif Tajul Arnob',
      'image': 'assets/zarif.jpg',
      'callType': Icons.videocam,
      'direction': Icons.arrow_downward,
      'color': Colors.green,
    },
    {
      'name': 'Istiyak Ahmed Mahi',
      'image': 'assets/istiyak.jpg',
      'callType': Icons.videocam,
      'direction': Icons.arrow_upward,
      'color': Colors.red,
    },
    {
      'name': 'Ashikur Rahman',
      'image': 'assets/ashikur.jpg',
      'callType': Icons.call,
      'direction': Icons.arrow_downward,
      'color': Colors.green,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text('WhatsApp', style: TextStyle(fontSize: 22)),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 15),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.people_alt)),
            Tab(text: 'Chats'),
            Tab(text: 'Updates'),
            Tab(text: 'Calls'),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Recent calls',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: recentCalls.length,
              itemBuilder: (context, index) {
                final call = recentCalls[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(call['image']),
                    radius: 25,
                  ),
                  title: Text(call['name'],
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  subtitle: Row(
                    children: [
                      Icon(call['direction'], color: call['color'], size: 18),
                      SizedBox(width: 5),
                      Text('Yesterday, 8:30 PM'), // Placeholder text added here
                    ],
                  ),
                  trailing: Icon(call['callType'], color: Colors.green),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.message),
        onPressed: () {},
      ),
    );
  }
}
