import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class FileOperationRoute extends StatefulWidget {
  _FileOperationRoute createState() => _FileOperationRoute();
}

class _FileOperationRoute extends State<FileOperationRoute> {
  int _count = 0;

  @override
  void initState() {
    super.initState();
    _readCount().then((int count) {
      setState(() {
        _count = count;
      });
    });
  }

  Future<Null> _incrementCounter() async {
    setState(() {
      _count++;
    });
    await (await _getLocalFile()).writeAsString('$_count');
  }

  Future<File> _getLocalFile() async {
    String dir = (await getApplicationDocumentsDirectory()).path;
    return new File('$dir/counter.txt');
  }

  Future<int> _readCount() async {
    try {
      File file = await _getLocalFile();
      String content = await file.readAsString();
      return int.parse(content);
    } on FileSystemException {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('File Operation Test')),
      body: Center(
        child: Text('you have clicked $_count times'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();
        },
        tooltip: 'increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
