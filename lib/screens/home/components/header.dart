import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeaderSearchTitle extends StatelessWidget {
  const HeaderSearchTitle({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50 * 2.5),
      height: size.height * 0.1,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: colorPrimary,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(36),
                  bottomLeft: Radius.circular(36),
                )),
            child: Row(
              children: <Widget>[
                Text(
                  "Seleccione una encuesta",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
         
          Positioned(
            top: 0,
            right: -20,
            child: Image.asset(
              "assets/images/puntos.png",
              width: size.width * 0.2,
            ),
          )
        ],
      ),
    );
  }
}
