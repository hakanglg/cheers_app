import 'package:cheers_app/core/components/column/column.dart';
import 'package:cheers_app/core/components/profile/profile_image.dart';
import 'package:cheers_app/core/components/profile/profile_mail.dart';
import 'package:cheers_app/core/components/profile/profile_name.dart';
import 'package:cheers_app/core/components/row/row.dart';

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
