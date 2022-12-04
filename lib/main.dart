import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iac_project/Interfaces/cart.dart';
import 'package:iac_project/Interfaces/feed.dart';
import 'package:iac_project/Interfaces/profile.dart';
import 'package:iac_project/Interfaces/saved.dart';
import 'package:iac_project/Interfaces/search.dart';
import 'Interfaces/opening.dart';
import 'Interfaces/signin.dart';
import 'Interfaces/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
            title: "App",
            routes: {
              '/opening': (context) => const Opening(),
              '/signup': (context) => const SignUp(),
              '/signin': (context) => const SignIn(),
              '/cart': (context) => const Cart(),
              '/search': (context) => const Search(),
              '/saved': (context) => const Saved(),
              '/feed': (context) => const Feed(),
              '/profile': (context) => const Profile(),
            },
        initialRoute: '/opening',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: Brightness.light,
              appBarTheme: const AppBarTheme(
                color: Colors.white,
                iconTheme: IconThemeData(
                  color: Colors.black,
                ),
              ),
              iconTheme: const IconThemeData(
                color: Colors.black87,
              ),
            ),
      );
  }
}
