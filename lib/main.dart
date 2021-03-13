import 'package:encuestas/constants.dart';
import 'package:encuestas/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Encuestas',
      theme: ThemeData(
        primaryColor: colorPrimary,
        scaffoldBackgroundColor: Colors.white,
      ),
       home: WelcomeScreen(),
    );
  }
}
