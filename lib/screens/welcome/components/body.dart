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
          Text(
            "¡Hola!",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Image.asset(
            "assets/icons/chat.svg",
          ),
           
        ],
      ),
    );
  }
}
