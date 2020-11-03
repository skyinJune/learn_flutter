import 'package:flutter/material.dart';

class ProgressIndicatorPage extends StatefulWidget {
  @override
  _ProgressIndicatorPageState createState() => _ProgressIndicatorPageState();
}

class _ProgressIndicatorPageState extends State<ProgressIndicatorPage> {
  double _progress = 0;

  void _incressProgress() {
    setState(() {
      _progress += 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('ProgressIndicatorPage'),),
     body: Center(
       child: Column(
         children: <Widget>[
           LinearProgressIndicator(
             backgroundColor: Colors.grey[200],
             valueColor: AlwaysStoppedAnimation(Colors.blue),
           ),
           LinearProgressIndicator(
             backgroundColor: Colors.grey[200],
             valueColor: AlwaysStoppedAnimation(Colors.blue),
             value: .5,
           ),
           LinearProgressIndicator(
             backgroundColor: Colors.grey[200],
             valueColor: AlwaysStoppedAnimation(Colors.blue),
             value: _progress,
           ),
           CircularProgressIndicator(
             backgroundColor: Colors.grey[200],
             valueColor: AlwaysStoppedAnimation(Colors.blue),
           ),
           CircularProgressIndicator(
             backgroundColor: Colors.grey[200],
             valueColor: AlwaysStoppedAnimation(Colors.blue),
             value: .5,
           ),
           CircularProgressIndicator(
             backgroundColor: Colors.grey[200],
             valueColor: AlwaysStoppedAnimation(Colors.blue),
             value: _progress,
           ),
           RaisedButton.icon(onPressed: () {
             _incressProgress();
           }, icon: Icon(Icons.add), label: Text('增加进度'))
         ],),),
   );
  }
}