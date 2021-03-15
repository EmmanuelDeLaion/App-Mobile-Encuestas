import 'package:encuestas/constants.dart';
import 'package:encuestas/screens/encuestas/encuestaEstudioSocioeconomico.dart';
import 'package:encuestas/screens/encuestas/encuestaFichaIdentificacion.dart';
import 'package:encuestas/screens/encuestas/encuestaFormatoEntrevista.dart';
import 'package:encuestas/screens/encuestas/encuestaInfoGeneral.dart';
import 'package:flutter/material.dart';
import 'header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      HeaderSearchTitle(size: size),
      BotonInfoGeneral(),
      SizedBox(
        height: 10,
      ),
      BotonEstudioSocioeconomico(),
      SizedBox(
        height: 10,
      ),
      BotonFichaIdentificacion(),
      SizedBox(
        height: 10,
      ),
      BotonFormatoEntrevista(),
      Positioned(
        right: 0,
        child: Image.asset(
          "assets/images/forma1.png",
          width: size.width * 0.4,
        ),
      ),
    ]));
  }
}

class BotonInfoGeneral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FlatButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EncuestaInformacionGeneralScreen();
        }));
      },
      child: Column(
        children: <Widget>[
          Container(
            width: size.width * 0.8,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                  Text("Información general",
                      style: TextStyle(
                          fontSize: 16,
                          color: colorPrimary,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "Contiene 10 preguntas",
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  )
                ]),
                Image.asset(
                  "assets/images/imgencuesta1.png",
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

class BotonEstudioSocioeconomico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FlatButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EncuestaEstudioSocioeconomicoScreen();
        }));
      },
      child: Column(
        children: <Widget>[
          Container(
            width: size.width * 0.8,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                  Text("Estudio Socioeconomico",
                      style: TextStyle(
                          fontSize: 16,
                          color: colorPrimary,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "Contiene 20 preguntas",
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  )
                ]),
                Image.asset(
                  "assets/images/imgencuesta1.png",
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

class BotonFichaIdentificacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FlatButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EncuestaFichaIdentificacion();
        }));
      },
      child: Column(
        children: <Widget>[
          Container(
            width: size.width * 0.8,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                  Text("Ficha de identificación",
                      style: TextStyle(
                          fontSize: 16,
                          color: colorPrimary,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "Contiene 15 preguntas",
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  )
                ]),
                Image.asset(
                  "assets/images/imgencuesta1.png",
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

class BotonFormatoEntrevista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FlatButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EncuestaFormatoEntrevista();
        }));
      },
      child: Column(
        children: <Widget>[
          Container(
            width: size.width * 0.8,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                  Text("Formato de entrevista",
                      style: TextStyle(
                          fontSize: 16,
                          color: colorPrimary,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "Contiene 30 preguntas",
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  )
                ]),
                Image.asset(
                  "assets/images/imgencuesta1.png",
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
