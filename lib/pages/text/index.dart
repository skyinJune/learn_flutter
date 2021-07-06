import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  TextPage();
  @override
  Widget build(BuildContext context) {
    GestureRecognizer _recognizer = new TapGestureRecognizer();
    return Scaffold(
      appBar: AppBar(title: Text('text page')),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              '大字号文字',
              style: TextStyle(fontSize: 24),
            ),
            Text(' 测试一下文本换行 ' * 10),
            Text(' 居右文本 ' * 15, textAlign: TextAlign.right),
            Text(
              '一行截断' * 10,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              '带样式的文字',
              style: TextStyle(
                  fontSize: 18,
                  height: 1.2,
                  fontFamily: 'Courier',
                  background: new Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
            DefaultTextStyle(
              style: TextStyle(fontSize: 20, color: Colors.red),
              child: Column(children: <Widget>[
                Text('使用外层定义样式 (继承)'),
                Text('使用外层定义样式 (继承) 2'),
                Text(
                  '使用特殊样式 (非继承)',
                  style: TextStyle(inherit: false, color: Colors.grey),
                )
              ]),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(text: '使用TextSpan 链接地址：'),
              TextSpan(
                  text: 'https://flutterchina.club',
                  style: TextStyle(color: Colors.blue),
                  recognizer: _recognizer),
            ]))
          ],
        ),
      ),
    );
  }
}
