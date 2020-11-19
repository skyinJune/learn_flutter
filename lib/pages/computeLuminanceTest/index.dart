import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComputeLuminanceTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compute Luminance Test'),
      ),
      body: Center(
        child: Column(
          children: [
            NavBar(color: Colors.blue, title: '标题'),
            NavBar(color: Colors.white, title: '标题')
          ],
        ),
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  NavBar({
    Key key,
    this.color,
    this.title
  });
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 52,
        minWidth: double.infinity
      ),
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 3),
            blurRadius: 3
          )
        ],
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: color.computeLuminance() < 0.5 ?
              Colors.white : Colors.black,
        ),
      ),
      alignment: Alignment.center,
    );
  }
}