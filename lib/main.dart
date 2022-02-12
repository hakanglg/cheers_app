import 'package:cheers_app/core/theme/light_theme.dart';
import 'package:cheers_app/views/nav/nav_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        home: NavView(),
        getPages: [
          GetPage(name: '/', page: () => NavView()),
        ]);
  }
}
