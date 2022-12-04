import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import '../Widgets/tapped.dart';
import 'package:fluttertoast/fluttertoast.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final t = TappedBox(
    text: 'Stay Signed in',
  );

  String? emailValidator(String? value) {
    if (value!.isEmpty) {
      return ("Please Enter Your Email");
    }
    // reg expression for email validation
    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
      return ("Please Enter a valid email");
    }
    return null;
  }

  String? passwordValidator(String? value) {
    RegExp regex = RegExp(r'^.{6,}$');
    if (value!.isEmpty) {
      return ("Password is required for login");
    }
    if (!regex.hasMatch(value)) {
      return ("Enter Valid Password(Min. 6 Character)");
    }
    return null;
  }

  // string for displaying the error Message
  String? errorMessage;

  _SignIn() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 35),
                  child: SizedBox(
                    width: 328,
                    height: 24,
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 35, top: 10, bottom: 80),
                  child: SizedBox(
                    width: 328,
                    height: 24,
                    child: Text(
                      "Complete this step for best adjustment",
                      style: TextStyle(
                        fontFamily: "Inter",
                        color: Colors.blueGrey,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                Input(
                  field: 'Email',
                  control: emailController,
                  valid: emailValidator,
                ),
                Input(
                  field: 'Password',
                  control: passwordController,
                  valid: passwordValidator,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    t,
                    const TappedText(
                        c: Colors.black,
                        text: "",
                        tapped: "Forgot Password ?",
                        role: '/forgot_password'),
                  ],
                ),
                ColoredButton(
                    name: "SIGN IN", color: const Color(0xffbd2005), role: () {
                  Navigator.pushNamed(context, '/feed');
                }),
                const SizedBox(
                  height: 70,
                ),
                ColoredButton(
                  name: "SIGN IN WITH FACEBOOK",
                  icon: const ImageIcon(AssetImage("assets/icons/Facebook.png"),
                    color: Colors.white,),
                  color: const Color(0xff3B5998),
                  role: () {
                    Navigator.pushNamed(context, '/feed');
                  },
                ),
                const TappedText(
                    text: "Don't have An Account ? ",
                    tapped: "Sign Up Here",
                    role: '/signup')
              ],
            ),
          ),
        ),
      ),
    );
  }
}