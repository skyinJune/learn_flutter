import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SingleChildScrollViewTestRoute extends StatelessWidget {
  String _str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SingleChildScrollView')),
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: _str.split('').map((item) {
                return new Chip(
                  avatar: new CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(item),
                  ),
                  label: Text('xxxx'),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
