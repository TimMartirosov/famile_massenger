import 'package:famile_massenger/src/homeScreen.dart';
import 'package:famile_massenger/src/loginScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FssengerApp());
}

class FssengerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sign in with Pnone number",
      theme: ThemeData(primaryColor: Color.fromRGBO(50, 65, 85, 1)),
      home: LoginScreen(),
      // home: HomeScreen(),
    );
  }
}
