import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class UserProfileName extends StatelessWidget {
  const UserProfileName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Charles Bukowski",
      style: context.textTheme.headline6,
    );
  }
}
