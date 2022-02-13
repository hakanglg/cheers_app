import 'dart:async';

import 'package:flutter/material.dart';

import '../../product/components/time_card.dart';

class HomeViewModel extends StatefulWidget {
  @override
  State<HomeViewModel> createState() => _HomeViewModelState();
}

class _HomeViewModelState extends State<HomeViewModel> {
  Duration duration = Duration();

  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void addTime() {
    final addSeconds = 1;

    setState(() {
      final seconds = duration.inSeconds + addSeconds;

      duration = Duration(seconds: seconds);
    });
  }

  void startTimer() {
    timer = Timer.periodic(
      Duration(seconds: 1),
      (_) => addTime(),
    );
  }

  void reset() {
    setState(() {
      duration = Duration();
    });
  }

  @override
  Widget build(BuildContext context) {
    return buildTime();
  }

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    final hours = twoDigits(duration.inHours.remainder(24));
    final days = twoDigits(duration.inDays);

    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          BuildTimeCard(time: days, color: Colors.red, header: "Gün"),
          BuildTimeCard(time: hours, color: Colors.white, header: "Saat"),
          BuildTimeCard(time: minutes, color: Colors.white, header: "Dakika"),
          BuildTimeCard(time: seconds, color: Colors.white, header: "Saniye")
        ],
      ),
    );
  }
}
