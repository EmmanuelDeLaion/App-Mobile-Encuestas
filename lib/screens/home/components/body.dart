import 'package:flutter/material.dart';
 
 
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Text("Hola")
          ],
        ),
      ),
    );
  }
}