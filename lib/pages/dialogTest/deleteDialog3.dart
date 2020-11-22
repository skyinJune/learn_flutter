import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<bool> deleteDialog3(BuildContext context) {
  bool _withTree = false;
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('提示'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('确定删除文件吗?'),
              Row(
                children: [
                  Text('同时删除子目录'),
                  StatefulBuilder(
                      builder: (context, _setState) {
                        return Checkbox(
                            value: _withTree,
                            onChanged: (bool v) {
                              _setState(() {
                                _withTree = v;
                              });
                            }
                        );
                      }
                  )
                  // DialogCheckbox(
                  //     value: _withTree,
                  //     onChanged: (value) {
                  //       _withTree = !_withTree;
                  //     }
                  // )
                ],
              )
            ],
          ),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('取消')
            ),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(_withTree);
                },
                child: Text('确定')
            ),
          ],
        );
      }
  );
}

class DialogCheckbox extends StatefulWidget {
  DialogCheckbox({
    Key key,
    this.value,
    @required this.onChanged
});
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  _DialogCheckboxState createState() => _DialogCheckboxState();
}

class _DialogCheckboxState extends State<DialogCheckbox> {
  bool value;

  @override
  void initState() {
    value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: value,
        onChanged: (v) {
          widget.onChanged(v);
          setState(() {
            value = v;
          });
        }
    );
  }
}