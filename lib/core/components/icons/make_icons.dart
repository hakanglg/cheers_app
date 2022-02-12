import 'package:flutter/material.dart';

class MakeIcons extends StatelessWidget {
  final IconData icon;
  final Color color;

  const MakeIcons({Key? key, required this.icon, this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
    );
  }
}
