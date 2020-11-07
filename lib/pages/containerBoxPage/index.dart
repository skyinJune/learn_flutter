import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('container box'),),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(50),
              constraints: BoxConstraints.tightFor(
                width: 200,
                height: 80
              ),
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.red, Colors.orange],
                  center: Alignment.topLeft,
                  radius: 2
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2, 2),
                    blurRadius: 4
                  )
                ]
              ),
              transform: Matrix4.rotationZ(.2),
              alignment: Alignment.center,
              child: Text('contaniner',
                style: TextStyle(color: Colors.white, fontSize: 40.0),),
            )
          ],
        ),
      ),
    );
  }
}