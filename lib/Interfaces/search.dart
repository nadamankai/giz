import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iac_project/Widgets/parts.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: Center(),
      appBar: AppBar(
        actions: [
          IconButton(
            color: Colors.blueGrey,
            onPressed: () {
              _key.currentState!.openEndDrawer();
            },
            icon: const Icon(
              Icons.wrap_text_rounded,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: const Color(0xffbd2005),
        title: const Text(
          "Search",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
      bottomNavigationBar: const BotBar(i: 1),
    );
  }
}
