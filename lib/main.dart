import 'views/login/login_view.dart';
import 'views/onboarding/onboarding_view.dart';
import 'views/register/register_view.dart';

import 'core/theme/light_theme.dart';
import 'views/nav/nav_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        home: SafeArea(child: OnboardingView()),
        getPages: [
          GetPage(name: '/', page: () => NavView()),
          GetPage(name: '/login', page: () => LoginView()),
          GetPage(name: '/register', page: () => RegisterView()),
        ]);
  }
}
