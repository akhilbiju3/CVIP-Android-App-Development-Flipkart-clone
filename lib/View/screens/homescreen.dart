import 'package:flipkart_clone/View/screens/bottomscreen/account.dart';
import 'package:flipkart_clone/View/screens/bottomscreen/cart.dart';
import 'package:flipkart_clone/View/screens/bottomscreen/categories.dart';
import 'package:flipkart_clone/View/screens/bottomscreen/home.dart';
import 'package:flipkart_clone/View/screens/bottomscreen/notifications.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selection = 0;

  final Screens = [Home(), Categories(), Notifications(), Account(), Cart()];

  void tap(int index) {
    setState(() {
      selection = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[selection],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selection,
          onTap: (value) => tap(value),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.cottage,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.category,
                ),
                label: "Categories"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                ),
                label: "Notifications"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                ),
                label: "Account"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                label: "Cart"),
          ]),
    );
  }
}
