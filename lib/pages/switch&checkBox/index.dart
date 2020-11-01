import 'package:flutter/material.dart';

class SwitchCheckboxPage extends StatefulWidget {
  _SwitchCheckboxPageState createState() => new _SwitchCheckboxPageState();
}

class _SwitchCheckboxPageState extends State<SwitchCheckboxPage> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('switch & checkbox page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Switch(
                value: _switchSelected,
                onChanged: (value) {
                  setState(() {
                    _switchSelected = value;
                  });
                }),
            Checkbox(
                value: _checkboxSelected,
                onChanged: (value) {
                  setState(() {
                    _checkboxSelected = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
