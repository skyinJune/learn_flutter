import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleAnimationRoute extends StatefulWidget {
  _SimpleAnimationRouteState createState() => _SimpleAnimationRouteState();
}

// class AnimatedImage extends AnimatedWidget {
//   AnimatedImage({Key key, Animation<double> animation})
//   : super(key: key, listenable: animation);
//   @override
//   Widget build(BuildContext context) {
//     final Animation<double> animation = listenable;
//     return Image.asset('images/avatar.jpeg', width: animation.value);
//   }
// }

class _SimpleAnimationRouteState extends State<SimpleAnimationRoute>
  with SingleTickerProviderStateMixin {
  bool toggleScale = false;
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.ease);
    animation = new Tween(begin: 100.0, end: 200.0).animate(animation);
    // 使用 AnimatedWidget 或 AnimatedBuilder 后就不需要显示的写监听了
    // ..addListener(() {
    //   setState(() {
    //   });
    // });
    animation.addStatusListener((status) {
      switch(status) {
        case AnimationStatus.completed: print('completed'); break;
        case AnimationStatus.dismissed: print('dismissed'); break;
        case AnimationStatus.forward: print('forward'); break;
        case AnimationStatus.reverse: print('reverse'); break;
      }
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
          // child: AnimatedImage(animation: animation,),
          child: AnimatedBuilder(
            child: Image.asset('images/avatar.jpeg'),
            animation: animation,
            builder: (BuildContext context, Widget child) {
              return Container(
                child: child,
                width: animation.value,
              );
            },
          ),
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