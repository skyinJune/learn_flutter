import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewTest extends StatelessWidget {
  final Widget divider1 = Divider(color: Colors.green);
  final Widget divider2 = Divider(color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('list view'),),
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text('$index' + ' xxx'),);
        },
        separatorBuilder: (BuildContext context, int index) {
          return index % 2 == 0 ? divider1 : divider2;
        },
      ),
    );
  }
}