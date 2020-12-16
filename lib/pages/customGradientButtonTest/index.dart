import 'package:flutter/material.dart';

import 'CustomGradientButton.dart';

class CustomGradientButtonTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('custom Gradient Button Test'),
      ),
      body: Column(
        children: [
          CustomGradientButton(
            child: Text('button 1'),
            width: 300,
            height: 30,
            colors: [Colors.red, Colors.blue],
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            onPressed: () {
              print('button 1 pressed');
            },
          )
        ],
      ),
    );
  }
}
