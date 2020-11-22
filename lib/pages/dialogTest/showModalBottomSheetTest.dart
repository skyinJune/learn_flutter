import 'package:flutter/material.dart';

Future<void> showModalBottomSheetTest(BuildContext context) async {
  int index = await showModalBottomSheet<int> (
      context: context,
      builder: (context) {
        return ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('$index'),
              onTap: () {
                Navigator.of(context).pop(index);
              },
            );
          },
        );
      }
  );
  print('选择了 $index');
}