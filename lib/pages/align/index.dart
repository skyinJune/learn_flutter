import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlignTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('align page'),),
      body: Column(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            color: Colors.blue[50],
            child: Align(
              alignment: Alignment.topRight,
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
          Container(
            height: 10,
          ),
          Container(
            color: Colors.blue[50],
            child: Align(
              widthFactor: 2,
              heightFactor: 2,
              alignment: Alignment(2, 0),
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
          Container(
            height: 10,
          ),

        ],
      )
    );
  }
}