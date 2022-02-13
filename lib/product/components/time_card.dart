import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class BuildTimeCard extends StatelessWidget {
  final String time;
  final String header;
  final Color color;

  const BuildTimeCard(
      {Key? key,
      required this.time,
      required this.header,
      this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              time,
              style: context.textTheme.headline1!
                  .copyWith(fontWeight: FontWeight.w800, color: color),
            )
          ],
        ),
        Column(
          children: [
            Text(
              header,
              style: context.textTheme.bodyText1!.copyWith(color: color),
            )
          ],
        )
      ],
    );
    ;
  }
}
