import 'package:flutter/material.dart';
import './pages/index.dart';
import './pages/signin.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Home',
        home: new IndexPage(),
        routes: {
          '/signin': (BuildContext context) => new SigninPage(),
          '/home': (BuildContext context) => new IndexPage(),
        },
        initialRoute: '/home');
  }
}
