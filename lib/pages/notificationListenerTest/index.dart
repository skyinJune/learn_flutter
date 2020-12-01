import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification Test'),),
      body: NotificationListener(
        onNotification: (notification) {
          switch(notification.runtimeType) {
            case ScrollStartNotification:
              print('scroll start');
              break;
            case ScrollUpdateNotification:
              print('scroll ing');
              break;
            case ScrollEndNotification:
              print('scroll end');
              break;
            case OverscrollNotification:
              print('scroll end');
              break;
          }
        },
        child: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext contest, int index) {
            return ListTile(title: Text('$index'),);
          },
        ),
      ),
    );
  }
}