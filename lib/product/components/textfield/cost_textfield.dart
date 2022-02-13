import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/components/textfield/custom_textfield.dart';

class CostTextFieldSection extends StatelessWidget {
  const CostTextFieldSection({
    Key? key,
    required this.mailController,
  }) : super(key: key);

  final TextEditingController mailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        hide: true,
        controller: mailController,
        icon: FontAwesomeIcons.key,
        hintText: "Alkole Günlük Harcadığınız Miktar");
  }
}
