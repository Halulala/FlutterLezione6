import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: MyAppBar(),
        body: MyBody(),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: Text(
          '12:00',
          style: TextStyle(fontSize: 20.0, color: Colors.black),
        ),
      ),
      actions: [
        Row(
          children: [
            Icon(Icons.battery_full, color: Colors.black),
            SizedBox(width: 16.0),
            Icon(Icons.wifi, color: Colors.black),
            SizedBox(width: 16.0),
            Icon(Icons.network_cell, color: Colors.black),
            SizedBox(width: 16.0),
          ],
        ),
      ],
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyTextAndNotificationRow(),
          SizedBox(height: 4.0),
          Text(
            'Lets learn something!',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 16.0),
          SizedBox(
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyTextAndNotificationRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Hello, Lebron James!',
          style: TextStyle(fontSize: 18.0),
        ),
        Spacer(),
        Icon(Icons.notifications, color: Colors.black, size: 36.0),
      ],
    );
  }
}