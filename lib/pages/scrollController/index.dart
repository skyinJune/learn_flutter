import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollControllerTestPage extends StatefulWidget {
  _ScrollControllerTestPageState createState() => _ScrollControllerTestPageState();
}

class _ScrollControllerTestPageState extends State <ScrollControllerTestPage> {
  ScrollController _controller = new ScrollController();
  bool _showBtn = false;

  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.offset < 1000 && _showBtn) {
        setState(() {
          _showBtn = false;
        });
      } else if (_controller.offset > 1000 && _showBtn == false) {
        setState(() {
          _showBtn = true;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollerControllerTestPage'),
      ),
      body: ListView.separated(
        controller: _controller,
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('$index'),
          );
        },
        separatorBuilder: (context, index) => Divider(height: .0),
      ),
      floatingActionButton: !_showBtn ? null : FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: () {
          _controller.animateTo(
            0,
            duration: Duration(milliseconds: 200),
            curve: Curves.ease
          );
        },
      ),
    );
  }
}