import 'package:flutter/material.dart';

class MePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Flex(direction: Axis.horizontal, children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            height: 30.0,
            color: Colors.red,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 30.0,
            color: Colors.green,
          ),
        ),
      ])
    ]);
  }
}
