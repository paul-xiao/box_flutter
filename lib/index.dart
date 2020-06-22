import 'package:flutter/material.dart';

class ComponentIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('index')),
        body: Center(
            child: Row(children: <Widget>[
          new Text('index'),
          new FlatButton(onPressed: () {}, child: Text('button'))
        ])));
  }
}
