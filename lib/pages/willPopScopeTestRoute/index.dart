import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WillPopScopeTestRoute extends StatefulWidget {
  _WillPopScopeTestRoute createState() => _WillPopScopeTestRoute();
}

class _WillPopScopeTestRoute extends State <WillPopScopeTestRoute> {
  DateTime _lastPressTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WillPopScope Test page'),
      ),
      body: new WillPopScope(
        onWillPop: () async {
          print('onWillPop');
          if (_lastPressTime == null ||
              DateTime.now().difference(_lastPressTime) > Duration(seconds: 1)
          ) {
            setState(() {
              _lastPressTime = DateTime.now();
            });
            return false;
          } else {
            return true;
          }
        },
        child: Center(
          child: Text('tap twice in 1s to navigate back'),
        ),
      ),
    );
  }
}