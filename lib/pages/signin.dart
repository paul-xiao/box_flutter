import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: <Widget>[
        Text('Layout'),
        RaisedButton(
          child: Text("normal"),
          onPressed: () {},
        )
      ],
    ));
  }
}
