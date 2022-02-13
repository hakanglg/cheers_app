import 'package:flutter/material.dart';

class Health {
  final IconData icon;
  final double percent;
  final Color color;
  final String text;

  Health(
      {required this.icon,
      required this.percent,
      required this.color,
      required this.text});
}

List<Health> healths = [
  Health(icon: Icons.favorite, percent: 0.3, color: Colors.red, text: "30")
];
