import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GestureRecognizerTest extends StatefulWidget {
  _GestureRecognizerTestState createState() =>
      _GestureRecognizerTestState();
}

class _GestureRecognizerTestState extends State<GestureRecognizerTest> {
  bool _toggleColor = false;
  TapGestureRecognizer _gestureRecognizer = new TapGestureRecognizer();

  @override
  void dispose() {
    _gestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gesture Recognizer Test'),),
      body: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '你好',
                  style: TextStyle(color: _toggleColor ? Colors.blue : Colors.amber),
                  recognizer: _gestureRecognizer
                    ..onTap = () {
                    setState(() {
                      _toggleColor = !_toggleColor;
                    });
                    }
              ),
              TextSpan(
                text: '，世界',
              )
            ]
          )
        ),
      ),
    );
  }
}