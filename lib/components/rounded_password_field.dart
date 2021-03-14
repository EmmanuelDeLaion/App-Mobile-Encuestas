import 'package:encuestas/components/text_field_container.dart';
import 'package:encuestas/constants.dart';
import 'package:flutter/material.dart';
 

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: colorPrimary,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: colorPrimary,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: colorPrimary,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
