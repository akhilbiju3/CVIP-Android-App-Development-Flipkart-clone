import 'package:flipkart_clone/View/screens/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Flipkartclone());
}

class Flipkartclone extends StatelessWidget {
  const Flipkartclone({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
