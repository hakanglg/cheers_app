import 'dart:async';

import 'package:cheers_app/core/components/column/column.dart';
import 'package:cheers_app/core/components/row/row.dart';
import 'package:cheers_app/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/constants/strings.dart';
import '../../product/components/time_card.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(onPressed: startTimer),
        appBar: AppBar(
          title: Text(
            time,
            style: context.textTheme.headline6,
          ),
        ),
        body: MyColumn(
          child: MyRow(
            child: Container(
              child: HomeViewModel(),
              decoration: BoxDecoration(
                  color: undurTheSea, borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ));
  }
}
