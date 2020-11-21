import 'package:flutter/material.dart';

Future<void> showListDialog(BuildContext context) async {
  int index = await showDialog<int> (
    context: context,
    builder: (context) {
      Widget dialogChild = Column(
        children: [
          ListTile(title: Text('请选择'),),
          Expanded(
              child: new ListView.builder(
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('$index'),
                    onTap: () {
                      Navigator.of(context).pop(index);
                    },
                  );
                },
              )
          )
        ],
      );
      return Dialog(child: dialogChild,);
    }
  );
  if (index != null) {
    print('选择了 $index');
  } else {
    print('什么也没选');
  }
}