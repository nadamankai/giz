import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iac_project/Widgets/parts.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool x = false;
  num price = 0;
  num deliveryFee = 3;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BotBar(i: 2),
        appBar: AppBar(
          backgroundColor: const Color(0xffbd2005),
          title: const Text(
            "Cart",
            style: TextStyle(color: Colors.white, fontSize: 23),
          ),
        ),
        body: ListView(children: [
          Center()]
        )
    );
  }
}
