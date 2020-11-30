import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaleTestRoute extends StatefulWidget {
  _ScaleTestRouteState createState() => _ScaleTestRouteState();
}

class _ScaleTestRouteState extends State<ScaleTestRoute> {
  double _width = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scale Test Route'),),
      body: Center(
        child: GestureDetector(
          child: Image.asset('images/avatar.jpeg', width: _width,),
          onScaleUpdate: (details) {
            setState(() {
              _width = 200 * details.scale.clamp(0.5, 10);
            });
          },
        ),
      ),
    );
  }
}