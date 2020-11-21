import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/dialogTest/showCustomDialog.dart';

Future<void> deleteDialog2(BuildContext context) async {
  bool delete = await showCustomDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('提示'),
        content: Text('确定要删除文件吗？'),
        actions: [
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
          )
        ],
      );
    }
  );
  if (delete == null) {
    print('取消');
  } else {
    print('确认');
  }
}