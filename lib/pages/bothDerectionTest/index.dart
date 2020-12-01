import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BothDirectionTestRoute extends StatefulWidget {
  _BothDirectionTestRouteState createState() =>
      _BothDirectionTestRouteState();
}

class _BothDirectionTestRouteState extends State<BothDirectionTestRoute> {
  double _left = 100.0;
  double _top = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Both Direction Test'),),
      body: Stack(
        children: [
          Positioned(
              left: _left,
              top: _top,
              child: GestureDetector(
                child: CircleAvatar(
                  child: Text('B'),
                  backgroundColor: Colors.blue,
                ),
                onVerticalDragUpdate: (detail) {
                  setState(() {
                    _top += detail.delta.dy;
                  });
                },
                onHorizontalDragUpdate: (detail) {
                  setState(() {
                    _left += detail.delta.dx;
                  });
                },
              )
          )
        ],
      ),
    );
  }
}