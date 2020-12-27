import 'package:flutter/material.dart';
import 'package:learn_flutter/models/index.dart';

class JsonModelTest extends StatelessWidget {
  final u = User.fromJson({"name": "Jack", "age": 24});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json Model Test'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                print('name: ${u.name}');
              },
              child: Text('print name'),
            ),
            RaisedButton(
              onPressed: () {
                print('name: ${u.age}');
              },
              child: Text('print age'),
            ),
          ],
        ),
      ),
    );
  }
}
