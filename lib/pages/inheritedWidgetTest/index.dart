import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InheritedWidgetTestRoute extends StatefulWidget {
  _InheritedWidgetTestRouteState createState() =>
      _InheritedWidgetTestRouteState();
}

class _InheritedWidgetTestRouteState extends
  State<InheritedWidgetTestRoute> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InheritedWidget test page'),
      ),
      body: Center(
        child: ShareDataWidget(
          data: count,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: _TextWidget(),
              ),
              RaisedButton.icon(
                  icon: Icon(Icons.add),
                  label: Text('add'),
                  onPressed: () {
                    setState(() {
                      ++count;
                    });
                  }
              )
            ],
          ),
        ),
      )
    );
  }
}

class _TextWidget extends StatefulWidget {
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<_TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      ShareDataWidget.of(context).data.toString()
    );
  }
}

class ShareDataWidget extends InheritedWidget {
  ShareDataWidget({
      @required this.data,
      Widget child
  }) : super(child: child);

  final int data;

  //定义便捷方法，方便子树中的widget获取共享数据
  static ShareDataWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  @override
  bool updateShouldNotify(ShareDataWidget old) {
      return old.data != data;
  }
}