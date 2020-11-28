import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DragTest extends StatefulWidget {
  _DragTestState createState() => _DragTestState();
}

class _DragTestState extends State<DragTest> {
  double _left = 50.0;
  double _top = 50.0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: _left,
            top: _top,
            child: GestureDetector(
              child: CircleAvatar(
                child: Text('A'),
                backgroundColor: Colors.blue,
              ),
              onPanDown: (DragDownDetails e){
                print('手指按下: ${e.globalPosition}');
              },
              onPanUpdate: (DragUpdateDetails e){
                setState(() {
                  _left += e.delta.dx;
                  _top += e.delta.dy;
                });
              },
              onPanEnd: (e) {
                print('滑动结束时的速度: ${e.velocity}');
              },
            )
        )
      ],
    );
  }
}