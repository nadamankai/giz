import 'package:flutter/material.dart';
import 'package:iac_project/Widgets/parts.dart';

class Saved extends StatefulWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbd2005),
        title: const Text(
          "Favorites",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
      bottomNavigationBar: const BotBar(i: 3),
      body: null
    );
  }
}
