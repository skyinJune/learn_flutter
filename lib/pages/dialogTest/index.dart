import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dialog test'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('对话框1'),
              onPressed: () async {
                bool delete = await showDeleteDialog1(context);
                if (delete == null) {
                  print('取消');
                } else {
                  print('确定');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

Future<bool> showDeleteDialog1(BuildContext context) {
  return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('提示'),
          content: Text('确定要删除当前文件吗?'),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('取消')
            ),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text('确定')
            ),
          ],
        );
      }
  );
}