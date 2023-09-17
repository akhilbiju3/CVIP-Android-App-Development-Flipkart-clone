import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "My Cart",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Deliver to : ",
                style: TextStyle(fontSize: 15),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Change")),
            ]),
            Divider(
              thickness: 5,
            )
          ],
        ),
      ),
    );
  }
}
