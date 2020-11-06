import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Padding page'),),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text('EdgeInsets.only(left: 15)'),
              ),
            ),
            Container(
              height: 15,
            ),
            Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text('EdgeInsets.symmetric(vertical: 15)'),
              ),
            ),
            Container(
              height: 15,
            ),
            Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Text('EdgeInsets.fromLTRB(10, 20, 10, 20)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}