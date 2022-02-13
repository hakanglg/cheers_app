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
        home: SafeArea(child: NavView()),
        getPages: [
          GetPage(name: '/', page: () => NavView()),
        ]);
  }
}
