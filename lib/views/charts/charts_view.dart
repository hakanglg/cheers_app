import '../../core/components/column/column.dart';
import '../../core/components/row/row.dart';
import '../../core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/constants/strings.dart';
import 'chart.dart';

class ChartsView extends StatelessWidget {
  const ChartsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          navCharts,
          style: context.textTheme.headline6,
        ),
      ),
      body: MyRow(
          child: MyColumn(
              child: Column(
        children: [
          LineChartSample2(),
          context.emptySizedHeightBoxLow3x,
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 36, 36, 49),
                borderRadius: BorderRadius.circular(15)),
            height: context.dynamicHeight(.12),
            width: context.dynamicWidth(1),
            child: Center(
                child: Wrap(
              spacing: 15,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text("Birikmiş Para:",
                    style: context.textTheme.headline6!
                        .copyWith(color: Colors.white)),
                Text("500\$",
                    style: context.textTheme.headline5!.copyWith(
                        color: blueMartina, fontWeight: FontWeight.bold))
              ],
            )),
          ),
        ],
      ))),
    );
  }
}
