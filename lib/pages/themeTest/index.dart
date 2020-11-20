import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeTestRoute extends StatefulWidget {
  _ThemeTestRoute createState() => _ThemeTestRoute();
}

class _ThemeTestRoute extends State<ThemeTestRoute> {
  Color _themeColor = Colors.teal;
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Theme(
      data: ThemeData(
        primarySwatch: _themeColor,
        iconTheme: IconThemeData(color: _themeColor)
      ),
      child: Scaffold(
        appBar: AppBar(title: Text('theme test'),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Icon(Icons.favorite),
                Icon(Icons.airport_shuttle),
                Text('跟随主题')
              ],
            ),
            Theme(
              data: themeData.copyWith(
                iconTheme: themeData.iconTheme.copyWith(
                  color: Colors.black
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Icon(Icons.favorite),
                  Icon(Icons.airport_shuttle),
                  Text('颜色固定')
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.palette),
          onPressed: () {
            setState(() {
              _themeColor = _themeColor == Colors.teal ?
                  Colors.blue : Colors.teal;
            });
          },
        ),
      ),
    );
  }
}