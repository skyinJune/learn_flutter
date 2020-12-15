import 'package:flutter/material.dart';

class AnimatedWidgetTest extends StatefulWidget {
  AnimatedWidgetTestState createState() => AnimatedWidgetTestState();
}

class AnimatedWidgetTestState extends State<AnimatedWidgetTest> {
  double _padding = 10;
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
                duration: Duration(milliseconds: 500),
                padding: EdgeInsets.all(_padding),
                child: Text("AnimatedPadding"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
