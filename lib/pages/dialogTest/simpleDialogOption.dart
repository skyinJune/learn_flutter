import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> changeLanguage(BuildContext context) async {
  int i = await showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        title: Text('请选择语言'),
        children: [
          SimpleDialogOption(
            child: Padding(
              child: Text('English'),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            onPressed: () {
              Navigator.pop(context, 1);
            },
          ),
          SimpleDialogOption(
            child: Padding(
              child: Text('中文'),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            onPressed: () {
              Navigator.pop(context, 2);
            },
          )
        ],
      );
    }
  );
  if (i != null) {
    print('选择了${i == 1 ? 'English' : '中文'}');
  } else {
    print('什么也没选');
  }
}