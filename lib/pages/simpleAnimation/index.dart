import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleAnimationRoute extends StatefulWidget {
  _SimpleAnimationRouteState createState() => _SimpleAnimationRouteState();
}

class _SimpleAnimationRouteState extends State<SimpleAnimationRoute>
  with SingleTickerProviderStateMixin {
  bool toggleScale = false;
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
      duration: Duration(microseconds: 500),
      vsync: this
    );
    animation = new Tween(begin: 100.0, end: 200.0).animate(controller)
    ..addListener(() {
      setState(() {
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Animation'),),
      body: Center(
        child: GestureDetector(
          child: Image.asset('images/avatar.jpeg', width: animation.value),
          onDoubleTap: () {
            if (toggleScale) {
              controller.reverse();
            } else {
              controller.forward();
            }
            setState(() {
              toggleScale = !toggleScale;
            });
          },
        ),
      ),
    );
  }
}