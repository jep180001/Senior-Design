import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profilepicture.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final List<String> notifications = [
    'New Notification 1',
    'New Notification 2',
    'New Notification 3',
    'New Notification 4',
    'New Notification 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            // Handle onTap action here
            print('GiveHub Button Pressed!');
          },
          child: Row(
            children: [
              Text(
                'GiveHub',
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        centerTitle: false, // Align title towards the left
        backgroundColor: const Color(0xFFFF3B3F), // Set the color here
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Notifications',
                style: GoogleFonts.inter(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20), // Add some space here
              Expanded(
                child: ListView.builder(
                  itemCount: notifications.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      key: Key(notifications[index]), // Unique key for each notification
                      direction: DismissDirection.endToStart, // Allow swipe from right to left to dismiss
                      onDismissed: (direction) {
                        // Remove the dismissed notification from the list
                        setState(() {
                          notifications.removeAt(index);
                        });
                      },
                      background: Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 20),
                        color: Color(0xCAEBF2).withOpacity(1),
                        child: Icon(Icons.delete, color: Colors.white),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Card(
                          elevation: 3,
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xCAEBF2).withOpacity(1),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding: EdgeInsets.all(12),
                            child: Row(
                              children: [
                                ProfilePicture(name: notifications[index], radius: 20, fontSize: 16),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        notifications[index],
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Notification Detail ${index + 1}', // Example detail text
                                        style: TextStyle(fontSize: 14, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
