import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioTestRoute extends StatefulWidget {
  _DioTestRouteState createState() => _DioTestRouteState();
}

class _DioTestRouteState extends State<DioTestRoute> {
  final _reqUrl = 'https://api.github.com/orgs/flutterchina/repos';
  Dio _dio = new Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio Test'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: FutureBuilder(
          future: _dio.get(_reqUrl),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              Response response = snapshot.data;
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return ListView(
                children: response.data
                    .map<Widget>((item) => ListTile(
                          title: Text(item['full_name']),
                        ))
                    .toList(),
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
