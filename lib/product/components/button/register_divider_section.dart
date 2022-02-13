import 'package:cheers_app/views/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/components/divider/custom_divider.dart';

class BuildRegisterSection extends StatelessWidget {
  final String text;

  const BuildRegisterSection({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomDivider(),
        GestureDetector(
          onTap: () {
            Get.to(LoginView());
          },
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
        CustomDivider()
      ],
    );
  }
}
