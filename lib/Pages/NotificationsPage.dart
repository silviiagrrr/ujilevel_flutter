import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  final List<String> notifications = [
    "You received a new message",
    "Your order has been shipped",
    "New discounts are available",
    "Your package has arrived",
    "A new update is available",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Color(0xFFEE9CA7),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.notifications, color: Color(0xFFEE9CA7)),
              title: Text(notifications[index]),
              onTap: () {
                // Perform action on tap if needed
              },
            ),
          );
        },
      ),
    );
  }
}
