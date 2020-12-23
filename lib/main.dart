import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/animatedSwitcher/index.dart';
import 'package:learn_flutter/pages/animatedWidgetTest/index.dart';
import 'package:learn_flutter/pages/bothDerectionTest/index.dart';
import 'package:learn_flutter/pages/customGradientButtonTest/index.dart';
import 'package:learn_flutter/pages/customNotificationTest/index.dart';
import 'package:learn_flutter/pages/customPageTransAnimation/index.dart';
import 'package:learn_flutter/pages/dialogTest/index.dart';
import 'package:learn_flutter/pages/dioTestRoute/index.dart';
import 'package:learn_flutter/pages/dragTest/index.dart';
import 'package:learn_flutter/pages/fileOperationTest/index.dart';
import 'package:learn_flutter/pages/futureBuilderTest/index.dart';
import 'package:learn_flutter/pages/gestureDetectorTest/index.dart';
import 'package:learn_flutter/pages/gestureRecognizerTest/index.dart';
import 'package:learn_flutter/pages/heroAnimationTest/index.dart';
import 'package:learn_flutter/pages/notificationListenerTest/index.dart';
import 'package:learn_flutter/pages/pointerEventTest/index.dart';
import 'package:learn_flutter/pages/scaleTest/index.dart';
import 'package:learn_flutter/pages/simpleAnimation/index.dart';
import 'package:learn_flutter/pages/staggerAnimationTest/index.dart';
import 'package:learn_flutter/pages/streamBuilderTest/index.dart';
import 'package:learn_flutter/pages/themeTest/index.dart';

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
import './pages/gridViewTestPage//index.dart';
import './pages/infiniteListWithGridView/index.dart';
import './pages/staggeredGridViewPage/index.dart';
import './pages/customScrollViewTest/index.dart';
import './pages/scrollController/index.dart';
import './pages/willPopScopeTestRoute/index.dart';
import './pages/inheritedWidgetTest/index.dart';
import './pages/inheritedProviderTest/index.dart';
import './pages/computeLuminanceTest/index.dart';

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
  final List _routeList = <Map>[
    // route列表
    {'desc': 'Dio Test', 'route': DioTestRoute()},
    {'desc': 'File Operation Test', 'route': FileOperationRoute()},
    {
      'desc': 'Custom Gradient Button Test',
      'route': CustomGradientButtonTest()
    },
    {'desc': 'Animated Widget', 'route': AnimatedWidgetTest()},
    {'desc': 'Animated Switcher', 'route': AnimatedSwitcherRoute()},
    {'desc': 'Stagger Animation Test', 'route': StaggerAnimationTest()},
    {'desc': 'Hero Animation Test', 'route': HeroAnimationTestRoute()},
    {
      'desc': 'Custom Page Trans Animation',
      'route': CustomPageTransAnimation()
    },
    {'desc': 'Simple Animation', 'route': SimpleAnimationRoute()},
    {'desc': 'Custom Notification', 'route': CustomNotification()},
    {'desc': 'Notification Test', 'route': NotificationTestRoute()},
    {'desc': 'Both Direction Test', 'route': BothDirectionTestRoute()},
    {'desc': 'Gesture Recognizer Test', 'route': GestureRecognizerTest()},
    {'desc': 'Scale Test', 'route': ScaleTestRoute()},
    {'desc': 'drag Test', 'route': DragTest()},
    {'desc': 'Gesture Detector Test', 'route': GestureDetectorTestRoute()},
    {'desc': 'Pointer Event Test', 'route': PointerEventTestRoute()},
    {'desc': 'Dialog Test', 'route': DialogTestRoute()},
    {'desc': 'Stream Builder Test', 'route': StreamBuilderTestRoute()},
    {'desc': 'Future Builder Test', 'route': FutureBuilderTestRoute()},
    {'desc': 'Theme Test', 'route': ThemeTestRoute()},
    {'desc': 'Compute Luminance Test', 'route': ComputeLuminanceTestRoute()},
    {'desc': 'Inherited Provider Test', 'route': InheritedProviderTestRoute()},
    {'desc': 'InheritedWidget test page', 'route': InheritedWidgetTestRoute()},
    {'desc': 'WillPopScope Test page', 'route': WillPopScopeTestRoute()},
    {
      'desc': 'Scroller Controller Test page',
      'route': ScrollControllerTestPage()
    },
    {'desc': 'Custom Scroll View Test page', 'route': CustomScrollViewTest()},
    {'desc': 'Staggered GridView Page', 'route': StaggeredGridViewPage()},
    {
      'desc': 'Infinite List With GridView',
      'route': InfiniteListWithGridView()
    },
    {'desc': 'grid view page', 'route': GridViewPage()},
    {'desc': 'infinite list view page', 'route': InfiniteListView()},
    {'desc': 'list view page', 'route': ListViewTest()},
    {
      'desc': 'SingleChildScrollView',
      'route': SingleChildScrollViewTestRoute()
    },
    {'desc': 'clip page', 'route': ClipTestPage()},
    {'desc': 'base page', 'route': BasePage()},
    {'desc': 'container box', 'route': ContainBoxPage()},
    {'desc': '变换 Transform', 'route': TransformTestPage()},
    {'desc': '装饰容器 DecoratedBox', 'route': DecoratedBoxPage()},
    {'desc': '尺寸限制类容器 ConstrainedBox', 'route': ConstrainedBoxPage()},
    {'desc': 'padding page', 'route': PaddingPage()},
    {'desc': 'align page', 'route': AlignTest()},
    {'desc': 'stack & positioned page', 'route': StackPositioned()},
    {'desc': 'wrap test page', 'route': WrapTest()},
    {'desc': 'flex test page', 'route': FLexTestPage()},
    {'desc': 'row&column align page', 'route': RowColumnPage()},
    {'desc': 'progress indicator page', 'route': ProgressIndicatorPage()},
    {'desc': 'textfield & form page', 'route': TextFieldForm()},
    {'desc': 'switch & checkbox page', 'route': SwitchCheckboxPage()},
    {'desc': 'image page', 'route': ImagePage()},
    {'desc': 'button page', 'route': ButtonPage()},
    {'desc': 'text page', 'route': TextPage()},
    {'desc': 'add count page', 'route': CounterPage()}
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
        ));
  }
}
