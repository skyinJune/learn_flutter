import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WrapTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('wrap test page'),),
      body: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        alignment: WrapAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.teal,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.teal,
            width: 100,
            height: 150,
          ),
          Container(
            color: Colors.teal,
            width: 100,
            height: 60,
          ),
          Container(
            color: Colors.teal,
            width: 100,
            height: 70,
          ),
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
            label: new Text('Hamilton'),
          ),
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
            label: new Text('Lafayette'),
          ),
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
            label: new Text('Mulligan'),
          ),
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
            label: new Text('Laurens'),
          ),
        ],
      ),
    );
  }
}