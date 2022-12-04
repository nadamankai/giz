import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iac_project/Widgets/parts.dart';
import '../Widgets/tapped.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbd2005),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
      bottomNavigationBar: const BotBar(i: 4),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:15,bottom: 80,right: 15,top: 80),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                          "Name : ",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Color(0xffbd2005),
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "",
                          style: const TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 3,
                      color: const Color(0xD7DAE0E3),
                    ),
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Email : ",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Color(0xffbd2005),
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "",
                    style: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 3,
                      color: const Color(0xD7DAE0E3),
                    ),
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Phone Number : ",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Color(0xffbd2005),
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "",
                    style: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
