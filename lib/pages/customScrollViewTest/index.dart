import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomScrollViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Demo'),
              background: Image.asset(
                  'images/avatar.jpeg',
                  fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: new SliverGrid(
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10
                  ),
                  delegate: new SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return new Container(
                          alignment: Alignment.center,
                          color: Colors.cyan[100 * (index % 9)],
                          child: Text('grid item $index'),
                        );
                      },
                      childCount: 20
                  ),
              ),
          ),
          new SliverFixedExtentList(
              delegate: new SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.blue[100 * (index % 9)],
                      child: Text('list item $index'),
                    );
                  },
                  childCount: 50
              ),
              itemExtent: 50
          ),
        ],
      ),
    );
  }
}