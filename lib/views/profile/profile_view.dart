import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/constants/strings.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          navProfile,
          style: context.textTheme.headline6,
        ),
      ),
    );
  }
}
