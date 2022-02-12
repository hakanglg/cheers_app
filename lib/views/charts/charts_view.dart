import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../core/constants/strings.dart';

class ChartsView extends StatelessWidget {
  const ChartsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          charts,
          style: context.textTheme.headline6,
        ),
      ),
    );
  }
}
