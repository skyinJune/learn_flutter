import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPositioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('stack & positioned page'),),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              left: 18,
              child: Text("I am Jack"),
            ),
            Container(
              color: Colors.red,
              child: Text('hello world', style: TextStyle(color: Colors.white),),
            ),
            Positioned(
              top: 18.0,
              child: Text("Your friend"),
            )
          ],
        ),
      ),
    );
  }
}