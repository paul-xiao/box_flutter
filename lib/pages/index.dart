import 'package:flutter/material.dart';
import '../components/MyDrawer.dart';
import './travel.dart';
import './list.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IndexPageSate();
  }
}

class IndexPageSate extends State<IndexPage> {
  int currentIndex;
  final pages = [ListPage(), TravelPage(), ListPage()];
  final pageTitle = ['Home', 'TravelPage', 'ListPage'];
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(pageTitle[currentIndex]),
          actions: <Widget>[
            //导航栏右侧菜单
            IconButton(icon: Icon(Icons.share), onPressed: () {}),
          ],
        ),
        drawer: new MyDrawer(),
        bottomNavigationBar: BottomNavigationBar(
            // 底部导航
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), title: Text('List')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text('Me')),
            ],
            fixedColor: Colors.blue,
            currentIndex: currentIndex,
            onTap: (index) {
              _changePage(index);
            }),
        body: pages[currentIndex]);
  }

  /*切换页面*/
  void _changePage(int index) {
    /*如果点击的导航项不是当前项  切换 */
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}
