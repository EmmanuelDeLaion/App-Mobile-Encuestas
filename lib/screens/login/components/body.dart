import 'package:encuestas/constants.dart';
import 'package:encuestas/screens/encuestas/encuestas.dart';
import 'package:encuestas/screens/home/home_screen.dart';
import 'package:encuestas/screens/login/components/background.dart';
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
            "INICIO",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w900, color: colorPrimary),
          ),
          SizedBox(
            height: 20,
          ),
          Image(
            image: AssetImage(
              "assets/images/img-login.png",
            ),
            width: size.width * 0.7,
          ),
          SizedBox(
            height: 10,
          ),
          TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: colorPrimary,
                  ),
                  hintText: "Ingrese el usuario",
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  border: InputBorder.none),
            ),
          ),
          TextFieldContainer(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock_rounded,
                    color: colorPrimary,
                  ),
                  hintText: "Ingrese su contraseña",
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  border: InputBorder.none),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            width: size.width * 0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  color: colorPrimary,
                   onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      // return HomeScreen();
                      return EncuestaScreen();
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
          )
        ],
      ),
    );
  }
}
class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: colorPrimaryLigth2,
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
  }
}
