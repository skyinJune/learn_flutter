import 'package:flutter/material.dart';

class AnimatedSwitcherRoute extends StatefulWidget {
  _AnimatedSwitcherRouteState createState() => _AnimatedSwitcherRouteState();
}

class _AnimatedSwitcherRouteState extends State<AnimatedSwitcherRoute> {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Switcher'),
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
              child: Text(
                '$_count',
                key: ValueKey<int>(_count),
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                var tween =
                    Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0));
                return MySlideTransition(
                  position: tween.animate(animation),
                  child: child,
                );
              },
              child: Text(
                '$_count',
                key: ValueKey<int>(_count),
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
              child: Text('tap to add'),
            )
          ],
        ),
      ),
    );
  }
}

class MySlideTransition extends AnimatedWidget {
  MySlideTransition(
      {Key key,
      @required Animation<Offset> position,
      this.transformHitTests = true,
      this.child})
      : assert(position != null),
        super(key: key, listenable: position);

  Animation<Offset> get position => listenable;
  final bool transformHitTests;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    Offset offset = position.value;
    if (position.status == AnimationStatus.reverse) {
      offset = Offset(-offset.dx, offset.dy);
    }
    return FractionalTranslation(
      translation: offset,
      transformHitTests: transformHitTests,
      child: child,
    );
  }
}
