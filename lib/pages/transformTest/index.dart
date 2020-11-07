import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('变换'),),
      body: Center(
        child: Wrap(
          spacing: 5,
          children: <Widget>[
            Container(
              height: 60,
            ),
            Container(
              color: Colors.black,
              child: new Transform(
                alignment: Alignment.topRight,
                transform: new Matrix4.skewY(0.3),
                child: new Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.deepOrange,
                  child: Text('Apartment for rent!')
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.rotate(
                angle: math.pi / 2,
                child: Text('hello world'),
              ),
            ),
            // 注意 Transform.rotate 和 RotatedBox 的区别
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: RotatedBox(
                quarterTurns: 1,
                child: Text('hello world'),
              )
            ),
          ],
        ),
      ),
    );
  }
}