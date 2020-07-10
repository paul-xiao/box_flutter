import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Flex(direction: Axis.horizontal, children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            height: 30.0,
            color: Color.fromRGBO(64, 121, 250, 1),
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
