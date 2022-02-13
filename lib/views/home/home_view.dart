import 'dart:async';

import 'package:cheers_app/core/components/column/column.dart';
import 'package:cheers_app/core/components/row/row.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/constants/strings.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Duration duration = Duration();
  Timer? timer;

  @override
  void initState() {
    super.initState();
    // startTimer();
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
    return Scaffold(
        appBar: AppBar(
          title: Text(
            time,
            style: context.textTheme.headline6,
          ),
        ),
        body: Center(
          child: MyColumn(
            child: MyRow(
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
        ));
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
          buildTimeCard(time: days, header: "Gün", color: Colors.red),
          buildTimeCard(time: hours, header: "S"),
          buildTimeCard(time: minutes, header: "DK"),
          buildTimeCard(time: seconds, header: "SN"),
        ],
      ),
    );
  }

  Widget buildTimeCard({required String time, String? header, Color? color}) {
    return Wrap(
      // crossAxisAlignment: WrapCrossAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          time,
          style: context.textTheme.headline1!
              .copyWith(fontWeight: FontWeight.w800, color: color),
        ),
        context.emptySizedWidthBoxLow,
        Padding(
          padding: EdgeInsets.only(top: context.dynamicHeight(.08)),
          child: Text(header!),
        )
      ],
    );
  }
}
