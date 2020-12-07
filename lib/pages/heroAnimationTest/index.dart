import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroAnimationTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation Test Route'),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: InkWell(
          child: Hero(
            tag: 'avatar',
            child: ClipOval(
              child: Image.asset(
                'images/avatar.jpeg',
                width: 50,
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return HeroAnimationTestPageB();
                })
            );
          },
        ),
      ),
    );
  }
}

class HeroAnimationTestPageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('page b'),),
      body: Container(
        alignment: Alignment.topLeft,
        child: Hero(
          tag: 'avatar',
          child: ClipOval(
            child: Image.asset(
              'images/avatar.jpeg',
              width: 150,
            ),
          ),
        ),
      ),
    );
  }
}
