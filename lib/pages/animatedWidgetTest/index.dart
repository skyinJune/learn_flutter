import 'package:flutter/material.dart';

class AnimatedWidgetTest extends StatefulWidget {
  AnimatedWidgetTestState createState() => AnimatedWidgetTestState();
}

class AnimatedWidgetTestState extends State<AnimatedWidgetTest> {
  final duration = Duration(milliseconds: 500);
  double _padding = 10;
  double _left = 100;
  Alignment _alignment = Alignment.topLeft;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Widget Test'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  _padding = _padding + 10;
                });
              },
              child: AnimatedPadding(
                duration: duration,
                padding: EdgeInsets.all(_padding),
                child: Text("AnimatedPadding"),
              ),
            ),
            SizedBox(
                height: 50,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: duration,
                      left: _left,
                      child: RaisedButton(
                        onPressed: () {
                          setState(() {
                            _left = _left + 50;
                          });
                        },
                        child: Text('AnimatedPositioned'),
                      ),
                    ),
                  ],
                )),
            Container(
              height: 100,
              color: Colors.grey,
              child: AnimatedAlign(
                duration: duration,
                alignment: _alignment,
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      _alignment = _alignment == Alignment.topLeft
                          ? Alignment.bottomRight
                          : Alignment.topLeft;
                    });
                  },
                  child: Text('AnimatedAlign'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
