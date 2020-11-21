import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/dialogTest/simpleDialogOption.dart';

import 'deleteDialog1.dart';
import 'deleteDialog2.dart';
import 'listDialog.dart';

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
            RaisedButton(
              child: Text('选择语言'),
              onPressed: () {
                changeLanguage(context);
              },
            ),
            RaisedButton(
              child: Text('ListDialog'),
              onPressed: () {
                showListDialog(context);
              },
            ),
            RaisedButton(
              child: Text('deleteDialog2'),
              onPressed: () {
                deleteDialog2(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}