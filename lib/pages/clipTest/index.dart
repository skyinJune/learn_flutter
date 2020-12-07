import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClipTestPage extends StatelessWidget {
  Widget _avater = Image.asset(
    'images/avatar.jpeg',
    width: 80,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('clip test page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ClipOval(
              child: _avater,
            ),
            ClipRRect(
              child: _avater,
              borderRadius: BorderRadius.circular(5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  widthFactor: .5,
                  child: _avater,
                ),
                Text(
                  'hello world',
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 将溢出的部分剪裁掉
                ClipRect(
                  child: Align(
                    alignment: Alignment.topLeft,
                    widthFactor: .5,
                    child: _avater,
                  ),
                ),
                Text(
                  'hello world',
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: ClipRect(
                clipper: MyCliper(),
                child: _avater,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyCliper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => Rect.fromLTWH(20, 20, 40, 60);

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}
