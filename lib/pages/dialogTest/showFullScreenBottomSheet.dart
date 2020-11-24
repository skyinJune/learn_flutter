import 'package:flutter/material.dart';

PersistentBottomSheetController<int> showBottomSheetTest(BuildContext context) {
  return showBottomSheet<int> (
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
}