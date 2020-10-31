import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  ButtonPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child: Text('normal'),
            ),
            FlatButton(onPressed: () {}, child: Text('nomal')),
            OutlineButton(
              onPressed: () {},
              child: Text('nomal'),
            ),
            IconButton(icon: Icon(Icons.thumb_up), onPressed: () {}),
            RaisedButton.icon(
                onPressed: () {}, icon: Icon(Icons.send), label: Text('发送')),
            FlatButton.icon(
                onPressed: () {}, icon: Icon(Icons.add), label: Text('添加')),
            OutlineButton.icon(
                onPressed: () {}, icon: Icon(Icons.info), label: Text('详情')),
            FlatButton(
              child: Text('提交'),
              onPressed: () {},
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            )
          ],
        ),
      ),
    );
  }
}
