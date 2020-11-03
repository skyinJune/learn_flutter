import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowColumnPage extends StatelessWidget {
  RowColumnPage();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('row&column align page')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('test row 1 align 1 '),
                Text('test row 1  align 2 '),
              ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('test row 2 align 1 '),
              Text('test row 2 align 2 ')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text('test row 3 align 1 '),
              Text('test row 3 align 2 ')
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text('test row 4 align 1 ', style: TextStyle(fontSize: 30),),
              Text('test row 4 align 2 ')
            ],
          )
        ],
      ),
    );
  }
}