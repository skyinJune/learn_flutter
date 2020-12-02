import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNotification extends StatefulWidget {
  _CustomNotificationState createState() =>
      _CustomNotificationState();
}

class _CustomNotificationState extends State<CustomNotification> {
  String _text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Notification'),),
      body: NotificationListener<MyNotification>(
        onNotification: (notification) {
          print('outer: ${notification.msg}');
          return false;
        },
        child: NotificationListener<MyNotification>(
          onNotification: (notification) {
            setState(() {
              _text += notification.msg + ' ';
            });
            return true;
          },
          child: Center(
            child: Column(
              children: [
                // RaisedButton(
                //     child: Text('send notification msg'),
                //     onPressed: () {
                //       MyNotification('hi').dispatch(context);
                //     }
                // ),
                Builder(
                  builder: (context) {
                    return RaisedButton(
                        child: Text('send notification msg'),
                        onPressed: () {
                          MyNotification('hi').dispatch(context);
                        }
                    );
                  },
                ),
                Text('$_text')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyNotification extends Notification {
  MyNotification(this.msg);
  final String msg;
}