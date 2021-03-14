import 'package:encuestas/constants.dart';
import 'package:flutter/material.dart';

import 'header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeaderSearchTitle(size: size),
            
          ]
        )
    );
  }
}
