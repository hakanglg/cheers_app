import 'package:cheers_app/views/charts/charts_view.dart';
import 'package:cheers_app/views/health/healt_view.dart';
import 'package:cheers_app/views/home/home_view.dart';
import 'package:cheers_app/views/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/strings.dart';

class NavView extends StatefulWidget {
  const NavView({Key? key}) : super(key: key);

  @override
  State<NavView> createState() => _HomeViewState();
}

class _HomeViewState extends State<NavView> {
  var _currentIndex = 0;
  final PageController pageController = PageController();
  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (page) {
          setState(() {
            _currentIndex = page;
          });
        },
        children: [HomeView(), HealthView(), ChartsView(), ProfileView()],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: onTap,
        items: [
          /// Home
          buildNavBarItem(Icon(Icons.home_outlined), home),

          /// Likes
          buildNavBarItem(Icon(Icons.favorite_border), health),

          /// Search
          buildNavBarItem(Icon(Icons.show_chart), charts),

          /// Profile
          buildNavBarItem(Icon(Icons.person_outline), profile),
        ],
      ),
    );
  }

  SalomonBottomBarItem buildNavBarItem(Icon icon, String text) {
    return SalomonBottomBarItem(
      icon: icon,
      title: Text(text),
      selectedColor: undurTheSea,
    );
  }
}
