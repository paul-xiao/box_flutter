import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  //init
  @override
  Widget build(BuildContext context) {
    return Box();
  }
}

const list = [1, 2, 3, 4, 5, 6];

class Box extends StatelessWidget {
  Widget test() {
    List<Widget> tiles = []; //先建一个数组用于存放循环生成的widget
    Widget test;
    for (var i = 0; i < 5; i++) {
      tiles.add(Container(
        color: Colors.yellow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, //水平方向对齐
          mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
          children: <Widget>[
            Icon(Icons.ac_unit),
            Text(" I am Jack "),
          ],
        ),
      ));
    }
    test = GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //横轴三个子widget
            childAspectRatio: 1.0 //宽高比为1时，子widget
            ),
        children: tiles);
    return test;
  }

  @override
  Widget build(BuildContext context) {
    return test();
  }
}
