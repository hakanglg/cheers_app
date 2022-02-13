import 'package:cheers_app/core/components/column/column.dart';
import 'package:cheers_app/core/components/row/row.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/strings.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../model/health_model.dart';

class HealthView extends StatelessWidget {
  final Health? health;

  const HealthView({Key? key, this.health}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          navHealth,
          style: context.textTheme.headline6,
        ),
      ),
      body: MyRow(
        child: MyColumn(
          child: Column(
            children: [
              buildPercentIndicator(brain, 0.5, sunFlower, "50"),
              context.emptySizedHeightBoxLow3x,
              buildPercentIndicator(kidney, 0.3, energos, "30"),
              context.emptySizedHeightBoxLow3x,
              buildPercentIndicator(liver, 0.3, blueMartina, "30"),
              context.emptySizedHeightBoxLow3x,
              buildPercentIndicator(sleep, 0.3, lavenderRose, "30"),
              context.emptySizedHeightBoxLow3x,
              buildPercentIndicator(sexual, 0.3, baraRed, "30"),
              context.emptySizedHeightBoxLow3x,
              buildPercentIndicator(skincare, 0.3, puffinBill, "30"),
              context.emptySizedHeightBoxLow3x,
              buildPercentIndicator(immunity, 0.3, pixelGrass, "30"),
              context.emptySizedHeightBoxLow3x,
              buildPercentIndicator(attension, 0.3, marineBlue, "30"),
              context.emptySizedHeightBoxLow3x,
              buildPercentIndicator(productivy, 0.3, forgattonPurple, "30"),
              context.emptySizedHeightBoxLow3x,
              buildPercentIndicator(nutrition, 0.3, hollyHock, "30"),
              context.emptySizedHeightBoxLow3x,
              buildPercentIndicator(deprivation, .6, undurTheSea, "60"),
              context.emptySizedHeightBoxLow3x,
            ],
          ),
        ),
      ),
    );
  }

  LinearPercentIndicator buildPercentIndicator(
      String title, double percent, Color color, String text) {
    return LinearPercentIndicator(
      leading: SizedBox(
        width: 75,
        child: Text(
          title,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ),
      barRadius: Radius.circular(15),
      // width: context.dynamicWidth(5),
      animation: true,
      lineHeight: 20.0,
      animationDuration: 200,
      percent: percent,
      center: Text(
        "$text%",
        style: TextStyle(
            fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      linearStrokeCap: LinearStrokeCap.roundAll,
      progressColor: color,
    );
  }
}
