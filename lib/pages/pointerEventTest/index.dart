import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PointerEventTestRoute extends StatefulWidget {
  _PointerEventTestRouteState createState() => _PointerEventTestRouteState();
}

class _PointerEventTestRouteState extends State<PointerEventTestRoute> {
  PointerEvent _event;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PointerEventTestRoute'),),
      body: Listener(
        child: Container(
          color: Colors.blue,
          width: double.infinity,
          height: 150,
          alignment: Alignment.center,
          child: Text(_event.toString(), style: TextStyle(color: Colors.white),)
        ),
        onPointerDown: (e) {
          setState(() {
            _event = e;
          });
        },
        onPointerMove: (e) {
          setState(() {
            _event = e;
          });
        },
        onPointerUp: (e) {
          setState(() {
            _event = e;
          });
        },
      ),
    );
  }
}