import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../Widgets/tapped.dart';

class SignUp extends StatefulWidget {
   const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  final t = TappedBox(
    text: 'Stay Signed in',
  );

  // string for displaying the error Message
  String? errorMessage;

  // our form key
  final _formKey = GlobalKey<FormState>();
  // editing Controller
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  String? nameValidator(String? value) {
    RegExp regex = RegExp(r'^.{3,}$');
    if (value!.isEmpty) {
      return ("First Name cannot be Empty");
    }
    if (!regex.hasMatch(value)) {
      return ("Enter Valid name(Min. 3 Character)");
    }
    return null;
  }

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

  String? phoneValidator(String? value) {
    RegExp regex = RegExp('^[0-9]');
    if (value!.isEmpty) {
      return ("Phone Number is required for login");
    }
    if ((!regex.hasMatch(value)) || (value.length != 8)) {
      return ("Enter Valid Phone Number( 8 Numbers Only)");
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 35),
                  child: SizedBox(
                    width: 328,
                    height: 24,
                    child: Text(
                      "SIGN UP",
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
                  field: 'Name',
                  control: nameController,
                  valid: nameValidator,
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
                Input(
                  field: 'Phone Number',
                  control: phoneController,
                  valid: phoneValidator,
                ),
                ColoredButton(
                    name: "SIGN UP", role: () {Navigator.pushNamed(context, '/feed');}),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: t,
                    ),
                    const TappedText(
                    text: "Already have An Account ? ",
                    tapped: "Sign In Here",
                    role: '/signin')
              ],
            ),
          ),
        ),
      ),
    );
  }
}