import '../../../core/components/textfield/custom_textfield.dart';
import 'package:flutter/material.dart';

class NameTextFieldSection extends StatelessWidget {
  const NameTextFieldSection({
    Key? key,
    required this.mailController,
  }) : super(key: key);

  final TextEditingController mailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        keyboardType: TextInputType.emailAddress,
        controller: mailController,
        icon: Icons.person,
        hintText: "İsim");
  }
}
