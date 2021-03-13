import 'package:encuestas/constants.dart';
import 'package:encuestas/screens/login/components/background.dart';
import 'package:encuestas/screens/login/login_screen.dart';
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
            "Inicio",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: colorPrimary
            ),
          ),
          Image(
            image: AssetImage(
              "assets/images/img-login.png",
            ),
            width: size.width * 0.7,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical:10, horizontal:20),
            decoration: BoxDecoration(
              color: colorPrimaryLigth,
              borderRadius: BorderRadius.circular(29),
            ),
          )
        ],
      ),
    );
  }
}

