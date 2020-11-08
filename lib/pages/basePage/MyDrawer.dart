import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key
}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 38),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: ClipOval(
                        child: Image.asset(
                          'images/avatar.jpeg',
                          width: 80,
                        ),
                      ),
                    ),
                    Text(
                        'skyInJune',
                        style: TextStyle(fontWeight: FontWeight.bold)
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.add),
                      title: Text('添加'),
                    ),
                    ListTile(
                      leading: const Icon(Icons.star),
                      title: Text('收藏'),
                    ),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}