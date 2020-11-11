import 'package:flutter/material.dart';

import './pages/counter/index.dart';
import './pages/text/index.dart';
import './pages/button/index.dart';
import './pages/image/index.dart';
import './pages/switch&checkBox/index.dart';
import './pages/textfield&form/index.dart';
import './pages/progressIndicator/index.dart';
import './pages/row&column/index.dart';
import './pages/flex/index.dart';
import './pages/wrap/index.dart';
import './pages/stack&positioned/index.dart';
import './pages/align/index.dart';
import './pages/paddingPage/index.dart';
import './pages/constrainedBox/index.dart';
import './pages/decoratedBox/index.dart';
import './pages/transformTest/index.dart';
import './pages/containerBoxPage/index.dart';
import './pages/basePage/index.dart';
import './pages/clipTest/index.dart';
import './pages/SingleChildScrollViewPage/index.dart';
import './pages/listViewTest/index.dart';
import './pages/infiniteListView/index.dart';

void main() => runApp(MyApp());

// app入口
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoHomePage(title: 'Learn Flutter Home Page'),
    );
  }
}

// 用盒子装下所有路由点击条
class DemoHomePage extends StatelessWidget {
  DemoHomePage({Key key, this.title}) : super(key: key);
  final String title; // home页title
  final List _routeList = <Map> [ // route列表
    {
      'desc': 'infinite list view page',
      'route': InfiniteListView()
    },
    {
      'desc': 'list view page',
      'route': ListViewTest()
    },
    {
      'desc': 'SingleChildScrollView',
      'route': SingleChildScrollViewTestRoute()
    },
    {
      'desc': 'clip page',
      'route': ClipTestPage()
    },
    {
      'desc': 'base page',
      'route': BasePage()
    },
    {
      'desc': 'container box',
      'route': ContainBoxPage()
    },
    {
      'desc': '变换',
      'route': TransformTestPage()
    },
    {
      'desc': '装饰容器',
      'route': DecoratedBoxPage()
    },
    {
      'desc': '尺寸限制类容器',
      'route': ConstrainedBoxPage()
    },
    {
      'desc': 'padding page',
      'route': PaddingPage()
    },
    {
      'desc': 'align page',
      'route': AlignTest()
    },
    {
      'desc': 'stack & positioned page',
      'route': StackPositioned()
    },
    {
      'desc': 'wrap test page',
      'route': WrapTest()
    },
    {
      'desc': 'flex test page',
      'route': FLexTestPage()
    },
    {
      'desc': 'row&column align page',
      'route': RowColumnPage()
    },
    {
      'desc': 'progress indicator page',
      'route': ProgressIndicatorPage()
    },
    {
      'desc': 'textfield & form page',
      'route': TextFieldForm()
    },
    {
      'desc': 'switch & checkbox page',
      'route': SwitchCheckboxPage()
    },
    {
      'desc': 'image page',
      'route': ImagePage()
    },
    {
      'desc': 'button page',
      'route': ButtonPage()
    },
    {
      'desc': 'text page',
      'route': TextPage()
    },
    {
      'desc': 'add count page',
      'route': CounterPage()
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: ListView.separated(
        itemCount: _routeList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_routeList[index]['desc']),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return _routeList[index]['route'];
              }));
            },
          );
        },
        separatorBuilder: (context, index) => Divider(height: .0),
      )
    );
  }
}
