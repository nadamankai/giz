import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iac_project/Widgets/tapped.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class BotBar extends StatefulWidget {
  final int i;

   const BotBar({Key? key, required this.i})
      : super(key: key);
  @override
  State<BotBar> createState() => _BotBarState();
}

class _BotBarState extends State<BotBar> {
  void onItem(index) {
    if (index != widget.i) {
      switch (index) {
        case 0:
          setState(() {
            Navigator.pushNamed(context, '/feed');
          });
          break;
        case 1:
          setState(() {
            Navigator.pushNamed(context, '/search');
          });
          break;
        case 2:
          setState(() {
            Navigator.pushNamed(context, '/cart');
          });
          break;
        case 3:
          setState(() {
            Navigator.pushNamed(context, '/saved');
          });
          break;
        case 4:
          setState(() {
            Navigator.pushNamed(context, '/profile');
          });
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: onItem,
        unselectedLabelStyle: const TextStyle(color: Colors.blueGrey),
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: const Color(0xffbd2005),
        currentIndex: widget.i,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_rounded,
              ),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/heart.png")),
              label: "Saved"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile"),
        ]);
  }
}