import 'package:flutter/material.dart';

class AnimatedWidgetTest extends StatefulWidget {
  AnimatedWidgetTestState createState() => AnimatedWidgetTestState();
}

class AnimatedWidgetTestState extends State<AnimatedWidgetTest> {
  final duration = Duration(milliseconds: 500);
  double _padding = 10;
  double _left = 100;
  Alignment _alignment = Alignment.topLeft;
  double _width = 100;
  double _height = 100;
  Color _color = Colors.red;
  TextStyle _style = TextStyle(color: Colors.black);

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
            ),
            AnimatedContainer(
              duration: duration,
              width: _width,
              height: _height,
              color: _color,
              child: FlatButton(
                child: Text('AnimatedContainer'),
                onPressed: () {
                  setState(() {
                    _width = _width + 10;
                    _height = _height + 10;
                    _color = _color == Colors.red ? Colors.blue : Colors.red;
                  });
                },
              ),
            ),
            AnimatedDefaultTextStyle(
                duration: duration,
                style: _style,
                child: GestureDetector(
                  child: Text('AnimatedDefaultTextStyle'),
                  onTap: () {
                    setState(() {
                      _style = _style == TextStyle(color: Colors.black)
                          ? TextStyle(color: Colors.blue)
                          : TextStyle(color: Colors.black);
                    });
                  },
                ))
          ]
              .map((e) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: e,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
