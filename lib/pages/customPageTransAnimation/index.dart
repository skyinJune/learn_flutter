import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPageTransAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Page Transition Animation'),),
      body: Center(
        child: RaisedButton(
          child: Text('to page B'),
          onPressed: () {
            print('to page b');
            Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 500),
                pageBuilder: (BuildContext context, Animation animation,
                    Animation secondaryAnimation) {
                  return FadeTransition(
                      opacity: animation,
                      child: PageB(),
                  );
                }
              )
            );
          },
        ),
      ),
    );
  }
}

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('page b'),),
    );
  }
}