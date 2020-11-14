import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('staggeredGridViewPage'),
      ),
      body: new StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => new Container(
            color: Colors.amberAccent,
            child: new Center(
              child: new CircleAvatar(
                child: new Text('$index'),
                backgroundColor: Colors.white,
              ),
            ),
          ),
          staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 2 : 1),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
      )
    );
  }
}