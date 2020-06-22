import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import './index.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new MaterialApp(
        title: 'Home',
        home: new Scaffold(
            appBar: new AppBar(title: new Text('welcome')),
            body: new NewRoute()));
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      new Text('page one'),
      new FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ComponentIndex();
            }));
          },
          child: Text('button'))
    ]);
  }
}
