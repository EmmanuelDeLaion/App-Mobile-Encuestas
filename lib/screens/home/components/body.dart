import 'package:encuestas/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.2,
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.2 - 27,
                decoration: BoxDecoration(
                    color: colorPrimary,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(36),
                      bottomLeft: Radius.circular(36),
                    )),
              ),
              Positioned(
                bottom: 0,
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
                            offset: Offset(0, 10),
                            blurRadius: 50,
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
                        image: AssetImage(
                          "assets/icons/iconobuscar.png"
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
