import 'package:encuestas/constants.dart';
import 'package:encuestas/screens/welcome/components/background.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           Positioned(
             child: Image.asset(
               "assets/images/logo.png",
               width: size.width * 0.3,     
             ),
           ),
        ],
      ),
    );
  }
}
