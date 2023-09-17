import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Notifications",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                child: Icon(
                  Icons.notification_add,
                  size: 50,
                ),
              ),
            ),
            Text(
              "No Notification Yet",
              style: TextStyle(fontSize: 19),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Continue Shopping"))
          ],
        ));
  }
}
