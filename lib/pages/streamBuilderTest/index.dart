import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StreamBuilderTestRoute extends StatelessWidget {
  Stream<int> _stream() {
    return Stream.periodic(Duration(seconds: 1), (i) => i);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StreamBuilder Test Route'),),
      body: Center(
        child: StreamBuilder(
          stream: _stream(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Text('stream has err: ${snapshot.error}');
            }
            switch(snapshot.connectionState) {
              case ConnectionState.none:
                return Text('no data');
              case ConnectionState.waiting:
                return Text('waiting data');
              case ConnectionState.active:
                return Text('get data ${snapshot.data}');
              case ConnectionState.done:
                return Text('stream closed');
            }
            return null;
          },
        ),
      )
    );
  }
}