import 'package:cheers_app/views/nav/nav_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kartal/kartal.dart';

import '../../../views/login/login_view.dart';

class CustomOutlineBorder extends StatelessWidget {
  final String buttonText;
  final Color color;
  final Function? function;

  const CustomOutlineBorder(
      {Key? key,
      required this.buttonText,
      this.function,
      this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(1),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              width: 2,
              color: color,
              style: BorderStyle.solid,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          onPressed: () => Get.to(NavView()),
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
