import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  TextPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('text page')),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              'text page',
              style: TextStyle(fontSize: 24),
            ),
            Text('text with right align ' * 15, textAlign: TextAlign.right),
            Text(
              'one line content => ' * 10,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              'hello world',
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
                Text('hello world'),
                Text('I am xxx'),
                Text(
                  'special style',
                  style: TextStyle(inherit: false, color: Colors.grey),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
