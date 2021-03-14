import 'package:encuestas/constants.dart';
import 'package:encuestas/screens/home/components/body.dart';
import 'package:flutter/material.dart';
 
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: colorPrimary,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.list
        ),
        onPressed: (){},
      ),
    );
  }
}