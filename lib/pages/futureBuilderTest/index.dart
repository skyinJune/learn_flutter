import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FutureBuilderTestRoute extends StatelessWidget {
  Future<String> _mockFuture() async {
    return Future.delayed(Duration(seconds: 2), () => 'mock 数据');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Future Builder Test Route'),),
      body: Center(
        child: FutureBuilder<String>(
          future: _mockFuture(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return Text('contents: ${snapshot.data}');
              }
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}