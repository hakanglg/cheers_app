import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class UserProfileMail extends StatelessWidget {
  const UserProfileMail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "gecelerin_yargıcı@gmail.com",
      style: context.textTheme.caption,
    );
  }
}
