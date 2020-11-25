import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/dialogTest/showDatePickerTest.dart';
import 'package:learn_flutter/pages/dialogTest/showDatePickerTest2.dart';
import 'package:learn_flutter/pages/dialogTest/simpleDialogOption.dart';

import 'deleteDialog1.dart';
import 'deleteDialog2.dart';
import 'deleteDialog3.dart';
import 'listDialog.dart';
import 'loadingDialog.dart';
import 'showModalBottomSheetTest.dart';
import 'showFullScreenBottomSheet.dart';

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
            RaisedButton(
              child: Text('对话框3'),
              onPressed: () async {
                bool delete = await deleteDialog3(context);
                if (delete == null) {
                  print('取消');
                } else {
                  print('确定, 同时删除子目录$delete');
                }
              },
            ),
            RaisedButton(
              child: Text('showModalBottomSheetTest'),
              onPressed: () {
                showModalBottomSheetTest(context);
              },
            ),
            RaisedButton(
              child: Text('showBottomSheet'),
              onPressed: () {
                PersistentBottomSheetController controller = showBottomSheetTest(context);
              },
            ),
            RaisedButton(
              child: Text('showLoadingDialog'),
              onPressed: () {
                showLoadingDialog(context);
              },
            ),
            RaisedButton(
              child: Text('showDatePickerTest'),
              onPressed: () async {
                var choseDate = await showDatePickerTest(context);
                print('chose date: $choseDate');
              },
            ),
            RaisedButton(
              child: Text('showDatePickerTest2'),
              onPressed: () async {
                var choseDate = await showDatePickerTest2(context);
                print('chose date: $choseDate');
              },
            ),
          ],
        ),
      )
    );
  }
}