import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage();

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0;

  void _increamentCounter() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('counter page')),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('you have click this button'),
            Text('$_count'),
            RaisedButton.icon(
                onPressed: () {
                  _increamentCounter();
                },
                icon: Icon(Icons.add),
                label: Text('click to add'))
          ],
        ),
      ),
    );
  }
}
