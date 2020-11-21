import 'package:flutter/material.dart';

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