import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../constants/colors.dart';

class UserProfilPic extends StatelessWidget {
  const UserProfilPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight(.15),
      width: context.dynamicWidth(.3),
      decoration: BoxDecoration(
          color: undurTheSea, borderRadius: BorderRadius.circular(15)),
      child: Icon(
        Icons.person,
        color: Colors.white,
        size: 100,
      ),
    );
  }
}
