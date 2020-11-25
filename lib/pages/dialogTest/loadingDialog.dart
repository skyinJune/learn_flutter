import 'package:flutter/material.dart';

Future<void> showLoadingDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return UnconstrainedBox(
        constrainedAxis: Axis.vertical,
        child: SizedBox(
          width: 280,
          child: AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('加载中...'),
                )
              ],
            ),
          ),
        ),
      );
    }
  );
}