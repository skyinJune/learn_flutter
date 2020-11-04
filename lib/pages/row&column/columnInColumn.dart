import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnInColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('column中嵌套column'),),
      body: Container(
        color: Colors.tealAccent,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.amber,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text('hello -'),
                  Text('world')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}