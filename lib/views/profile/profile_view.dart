import '../../core/components/column/column.dart';
import '../../core/components/profile/profile_image.dart';
import '../../core/components/profile/profile_mail.dart';
import '../../core/components/profile/profile_name.dart';
import '../../core/components/row/row.dart';

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
      body: MyColumn(
          child: MyRow(
              child: Column(
        children: [
          UserProfilPic(),
          context.emptySizedHeightBoxLow3x,
          UserProfileName(),
          context.emptySizedHeightBoxLow,
          UserProfileMail(),
          context.emptySizedHeightBoxHigh,
        ],
      ))),
    );
  }
}
