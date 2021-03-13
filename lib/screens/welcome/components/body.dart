import 'package:encuestas/constants.dart';
import 'package:encuestas/screens/login/login_screen.dart';
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
          Image(
            image: AssetImage(
              "assets/images/logo-azul.png",
            ),
            width: size.width * 0.3,
          ),
          SizedBox(height: 30),
          Container(
            width: size.width * 0.7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  color: colorPrimary,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                  child: Text(
                    "Iniciar Sesión",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17),
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            width: size.width * 0.7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  color: colorPrimaryLigth,
                  onLongPress: () {},
                  child: Text(
                    "Registrarse",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: colorPrimary,
                        fontSize: 17),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
