import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PointerEventTestRoute extends StatefulWidget {
  _PointerEventTestRouteState createState() => _PointerEventTestRouteState();
}

class _PointerEventTestRouteState extends State<PointerEventTestRoute> {
  PointerEvent _event;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PointerEventTestRoute'),),
      body: Column(
        children: [
          Listener(
            child: Container(
                color: Colors.blue,
                width: double.infinity,
                height: 150,
                alignment: Alignment.center,
                child: Text(_event.toString(), style: TextStyle(color: Colors.white),)
            ),
            onPointerDown: (e) {
              setState(() {
                _event = e;
              });
            },
            onPointerMove: (e) {
              setState(() {
                _event = e;
              });
            },
            onPointerUp: (e) {
              setState(() {
                _event = e;
              });
            },
          ),
          Listener(
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(Size(300.0, 150.0)),
              child: Center(child: Text("Box A")),
            ),
            // 整个区域可点击
            behavior: HitTestBehavior.opaque,
            onPointerDown: (e) => print('down text'),
          ),
          Stack(
            children: [
              Listener(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(300, 100)),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
                onPointerDown: (e) => print('down0'),
              ),
              Listener(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(200, 50)),
                  child: Center(child: Text('左上角200*50范围内非文本区域点击'),)
                ),
                onPointerDown: (e) => print('down1'),
                // 穿透
                behavior: HitTestBehavior.translucent,
              ),
            ],
          ),
          Listener(
            child: AbsorbPointer(
              child: Listener(
                child: Container(
                  color: Colors.amberAccent,
                  width: double.infinity,
                  height: 100,
                ),
                onPointerDown: (e) => print('in'),
              ),
            ),
            onPointerDown: (e) => print('up'),
          )
        ],
      )
    );
  }
}