import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iac_project/Widgets/tapped.dart';
class Opening extends StatefulWidget {
  const Opening({Key? key}) : super(key: key);

  @override
  State<Opening> createState() => _Opening();
}

class _Opening extends State<Opening> {

  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height * 0.7,
            child: const Image(
              image: AssetImage("assets/Images/welcome.webp"),
            ),
          ),
          ColoredButton(
            name: "SIGN IN WITH FACEBOOK",
            icon: const ImageIcon(
              AssetImage("assets/icons/Facebook.png"), color: Colors.white,),
            color: const Color(0xff3B5998),
            role: () {Navigator.pushNamed(context, '/feed');},
          ),
          ColoredButton(
            name: "SIGN IN WITH EMAIL",
            role: () {
              Navigator.pushNamed(context, '/signin');
            },),
          const TappedText(
              text: "Or Start By ",
              tapped: "Creating An Account",
              role: '/signup')
        ],
      ),
    );
  }
}