import 'package:encuestas/constants.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/images/puntos.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: -50,
            right: -50,
            child: Image.asset(
              "assets/images/encuestass.png",
              width: size.width * 0.7,
            ),
          ),
          Positioned(
            top: 70,
            left: -20,
            child: Image.asset(
              "assets/images/circulo1.png",
              width: size.width * 0.2,
            ),
          ),
          Positioned(
            top: 400,
            right: -20,
            child: Image.asset(
              "assets/images/circulo2.png",
              width: size.width * 0.2,
            ),
          ),
          Positioned(
            bottom: -10,
            left: -10,
            child: Image.asset(
              "assets/images/puntos.png",
              width: size.width * 0.3,
            ),
          ),
          child
        ],
      ),
    );
  }
}
