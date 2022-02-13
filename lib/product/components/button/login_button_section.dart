import 'package:flutter/material.dart';

import '../../../core/components/button/outline_button.dart';

class BuildLoginButtonSection extends StatelessWidget {
  final String text;
  final Function? function;
  const BuildLoginButtonSection({
    Key? key,
    required this.text,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomOutlineBorder(
      buttonText: text,
    );
  }
}
