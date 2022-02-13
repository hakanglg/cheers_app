import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../core/constants/colors.dart';
import '../register/register_view.dart';

class OnboardingView extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        decoration: PageDecoration(
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18)),
        image: Image.asset("assets/images/onboard1.png"),
        title: "Alkol sizi sosyal hayattan uzaklastirir",
        body: "",
      ),
      PageViewModel(
        decoration: PageDecoration(
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18)),
        image: Image.asset("assets/images/onboard2.png"),
        title: "Alkol temel ihtiyaclarinzdan uyku duzeninizi bozar",
        body: "",
      ),
      PageViewModel(
        decoration: PageDecoration(
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18)),
        image: Image.asset("assets/images/onboard3.png"),
        title: "Alkolun beyninizi ele gecirmesine izin vermeyin!",
        body: "",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        skip: Text("Atla",
            style: context.textTheme.bodyText1!.copyWith(color: Colors.white)),
        next: Text("ileri",
            style: context.textTheme.bodyText1!.copyWith(color: Colors.white)),
        showDoneButton: true,
        showSkipButton: true,
        done: Text(
          "Devam",
          style: context.textTheme.bodyText1!.copyWith(color: Colors.white),
        ),
        onDone: () {
          Get.to(RegisterView());
        },
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Colors.white,
            color: Colors.blueGrey,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
        pages: getPages(),
        globalBackgroundColor: undurTheSea,
      ),
    );
  }
}
