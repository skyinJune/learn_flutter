import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FLexTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flex test page'),
      ),
      body: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  height: 30,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  height: 30,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 100,
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 30,
                      color: Colors.red,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 20,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}