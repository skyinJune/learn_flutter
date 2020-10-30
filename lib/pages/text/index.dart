import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  TextPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('text page')),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'text page',
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
