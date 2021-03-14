import 'package:encuestas/constants.dart';
import 'package:encuestas/screens/encuestas/encuestas.dart';
import 'package:flutter/material.dart';
import 'header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      HeaderSearchTitle(size: size),
      botonSecciones(
        titulo: "Información General",
        descripcion: "Contiene 10 preguntas",
        path: "assets/images/imgencuesta1.png",
        press: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return EncuestaScreen();
          }));
        },
      ),
      SizedBox(
        height: 10,
      ),
      botonSecciones(
        titulo: "Información Socioeconómica",
        descripcion: "Contiene 20 preguntas",
        path: "assets/images/imgencuesta1.png",
        press: () {},
      ),
      SizedBox(
        height: 10,
      ),
      botonSecciones(
        titulo: "Ficha de identificación",
        descripcion: "Contiene 10 preguntas",
        path: "assets/images/imgencuesta1.png",
        press: () {},
      ),
      SizedBox(
        height: 10,
      ),
      botonSecciones(
        titulo: "Formato de entrevista",
        descripcion: "Contiene 10 preguntas",
        path: "assets/images/imgencuesta1.png",
        press: () {},
      ),
    ]));
  }
}

class botonSecciones extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final String path;
  final Function press;
  const botonSecciones(
      {Key key, this.titulo, this.descripcion, this.path, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FlatButton(
      child: Column(
        children: <Widget>[
          Container(
            width: size.width * 0.8,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: colorPrimary),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  offset: Offset(5, 5),
                  color: colorPrimary.withOpacity(1),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(children: <Widget>[
                  Text("$titulo",
                      style: TextStyle(
                          fontSize: 16,
                          color: colorPrimary,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "$descripcion",
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  )
                ]),
                Image.asset(
                  "$path",
                  width: size.width * 0.1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
