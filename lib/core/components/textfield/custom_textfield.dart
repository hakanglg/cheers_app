import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kartal/kartal.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final Color color;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool hide;

  const CustomTextField(
      {Key? key,
      this.hide = false,
      required this.controller,
      required this.icon,
      required this.hintText,
      this.keyboardType,
      this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      cursorColor: color,
      keyboardType: keyboardType,
      obscureText: hide,
      decoration: InputDecoration(
          prefixIcon: Padding(
            padding: context.verticalPaddingLow,
            child: FaIcon(
              icon,
              color: color,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: color),
          focusColor: Colors.white,
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: color)),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: color))),
    );
  }
}
