import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfiniteListWithGridView extends StatefulWidget {
  _InfiniteListWithGridViewState createState() =>
      _InfiniteListWithGridViewState();
}

class _InfiniteListWithGridViewState extends State<InfiniteListWithGridView> {
  List<IconData> _iconList = [];

  @override
  void initState() {
    _getIconsData();
    super.initState();
  }

  void _getIconsData() {
    Future.delayed(Duration(microseconds: 1500)).then((e) {
      setState(() {
        _iconList.addAll([
          Icons.ac_unit,
          Icons.airport_shuttle,
          Icons.all_inclusive,
          Icons.beach_access,
          Icons.cake,
          Icons.free_breakfast
        ]);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Infinite List With GridView'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 1),
          itemCount: _iconList.length,
          itemBuilder: (context, index) {
            if (index == _iconList.length - 1 && _iconList.length < 100) {
              _getIconsData();
            }
            return Icon(_iconList[index]);
          }),
    );
  }
}
