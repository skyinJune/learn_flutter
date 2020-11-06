import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstrainedBoxPage extends StatelessWidget {
  final Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('尺寸限制类容器'),
        actions: <Widget>[
          UnconstrainedBox(
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Colors.white70),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 50,
              minWidth: double.infinity
            ),
            child: redBox
          ),
          Container(
            height: 10,
          ),
          SizedBox(
            width: 60,
            height: 60,
            child: redBox
          ),
          Container(
            height: 10,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 60,
              minHeight: 90
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 90,
                minHeight: 20
              ),
              child: redBox,
            ),
          ),
          // 这里并没有加间距，但是有一个80的间距，是因为父容器的高度限制为100，
          // 子容器为20，虽然子容器可以正常展示为40*20，但是父容器的空间还是占据的，所以有间距
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 60,
              minHeight: 100
            ),
            child: UnconstrainedBox(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    minWidth: 90,
                    minHeight: 20
                ),
                child: redBox,
              ),
            )
          )
//          ConstrainedBox(
//            constraints: BoxConstraints(
//                maxWidth: 60,
//                maxHeight: 90
//            ),
//            child: ConstrainedBox(
//              constraints: BoxConstraints(
//                  maxWidth: 90,
//                  maxHeight: 20
//              ),
//              child: redBox,
//            ),
//          ),
        ],
      ),
    );
  }
}