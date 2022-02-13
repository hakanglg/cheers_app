import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: context.dynamicWidth(.2),
      color: Colors.white,
    );
  }
}
