import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'StaggerAnimation.dart';

class StaggerAnimationTest extends StatefulWidget {
  StaggerAnimationTestState createState() =>
      StaggerAnimationTestState();
}

class StaggerAnimationTestState extends State<StaggerAnimationTest> with
TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(milliseconds: 1500),
        vsync: this
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stagger Animation Test'),),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                border: Border.all(
                  color:  Colors.black.withOpacity(0.5),
                ),
              ),
              child: StaggerAnimation(
                controller: _controller,
              ),
            ),
            RaisedButton(
              child: Text('animation forward'),
              onPressed: () {
                _controller.forward();
              },
            ),
            RaisedButton(
              child: Text('animation reverse'),
              onPressed: () {
                _controller.reverse();
              },
            )
          ],
        ),
      ),
    );
  }
}