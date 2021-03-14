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
      height: size.height * 0.2,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 40),
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
            bottom: 10,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(20, 0),
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.23))
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Buscar",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.23)),
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Image(
                    image: AssetImage("assets/icons/iconobuscar.png"),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
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
