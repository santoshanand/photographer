import 'package:flutter/material.dart';

class StatsView extends StatelessWidget {
  const StatsView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text('27'),
            Text('Shots'),
          ],
        ),
        Column(
          children: <Widget>[
            Text('100'),
            Text('Following'),
          ],
        ),
        Column(
          children: <Widget>[
            Text('1.2M'),
            Text('Followers'),
          ],
        ),
      ],
    );
  }
}
