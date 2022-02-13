import '../../core/constants/colors.dart';
import '../login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kartal/kartal.dart';

import '../../core/components/column/column.dart';
import '../../core/components/row/row.dart';
import '../../product/components/button/login_button_section.dart';
import '../../product/components/button/register_divider_section.dart';
import '../../product/components/textfield/email_textfield.dart';
import '../../product/components/textfield/name_textfield.dart';
import '../../product/components/textfield/password_textfield.dart';

class RegisterView extends StatelessWidget {
  final TextEditingController mailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            decoration: buildCustomBoxDecoration(),
            child: MyRow(
              child: MyColumn(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(
                      flex: 2,
                    ),
                    Expanded(
                        flex: 1,
                        child: NameTextFieldSection(
                            mailController: mailController)),
                    Expanded(
                        flex: 1,
                        child: EmailTextFieldSection(
                            mailController: mailController)),
                    Expanded(
                        flex: 1,
                        child: PasswordTextFieldSection(
                            mailController: mailController)),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: BuildLoginButtonSection(
                        text: "Kayıt Ol",
                      ),
                    ),
                    context.emptySizedHeightBoxLow,
                    Expanded(
                      flex: 1,
                      child: BuildRegisterSection(
                        text: "Giriş Yap",
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  // add this section to theme
  BoxDecoration buildCustomBoxDecoration() {
    return BoxDecoration(
      color: undurTheSea,
    );
  }
}
