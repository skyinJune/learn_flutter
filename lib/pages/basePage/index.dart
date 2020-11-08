import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './MyDrawer.dart';

class BasePage extends StatefulWidget {
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List tabs = ['关注', '推荐', '热门'];
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        initialIndex: 1,
        length: tabs.length,
        vsync: this
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('base page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              print('on share pressed');
            },
          )
        ],
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.view_list),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },),
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs.map((item) => Tab(text: item,)).toList(),
        ),
      ),
      drawer: new MyDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((item) {
          return Container(
            alignment: Alignment.center,
            child: Text(item, textScaleFactor: 5,),
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(icon: Icon(Icons.message), title: Text('消息')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我的')),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTaped,
        fixedColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onFloatBtnPressed,
      ),
    );
  }

  void _onItemTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onFloatBtnPressed() {
    print('_onFloatBtnPressed');
  }
}