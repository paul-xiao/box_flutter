import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: <Widget>[
        Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            autofocus: true,
                            decoration: InputDecoration(
                                labelText: "用户名",
                                hintText: "用户名或邮箱",
                                prefixIcon: Icon(Icons.person)),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                labelText: "密码",
                                hintText: "您的登录密码",
                                prefixIcon: Icon(Icons.lock)),
                            obscureText: true,
                          ),
                          RaisedButton(
                            onPressed: () {
                              print('object');
                            },
                            color: Colors.blueAccent,
                            child: Text('111'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ))
          ],
        )
      ],
    ));
  }
}
