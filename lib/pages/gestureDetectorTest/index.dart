import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GestureDetectorTestRoute extends StatefulWidget {
  _GestureDetectorTestRouteState createState() => _GestureDetectorTestRouteState();
}

class _GestureDetectorTestRouteState extends State<GestureDetectorTestRoute> {
  String _gesture = 'no gesture detected';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('点击、双击、长按'),),
      body: Center(
        child: GestureDetector(
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 300,
            color: Colors.amberAccent,
            child: Text(_gesture),
          ),
          onTap: () => _setGestureStr('点击'),
          onDoubleTap: () => _setGestureStr('双击'),
          onLongPress: () => _setGestureStr('长按'),
        ),
      ),
    );
  }

  void _setGestureStr(String str) {
    setState(() {
      _gesture = str;
    });
  }
}