import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/constants/strings.dart';

class HealthView extends StatelessWidget {
  const HealthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
          health,
          style: context.textTheme.headline6,
        ),),
    );
  }
}
