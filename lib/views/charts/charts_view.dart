import 'package:cheers_app/core/components/column/column.dart';
import 'package:cheers_app/core/components/row/row.dart';
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
      body: MyRow(child: MyColumn(child: Column(
        children: [
          LineChartSample2(),
          
        ],
      ))),
    );
  }
}
