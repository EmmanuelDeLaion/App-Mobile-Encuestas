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
            bottom: -30,
            right: -30,
            child: Image.asset(
              "assets/images/circulo1.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: -30,
            left: -30,
            child: Image.asset(
              "assets/images/forma1.png",
              width: size.width * 0.6,
            ),
          ),
          child
        ],
      ),
    );
  }
}
