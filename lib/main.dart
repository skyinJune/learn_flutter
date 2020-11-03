import 'package:flutter/material.dart';

import './pages/counter/index.dart';
import './pages/text/index.dart';
import './pages/button/index.dart';
import './pages/image/index.dart';
import './pages/switch&checkBox/index.dart';
import './pages/textfield&form/index.dart';
import './pages/progressIndicator/index.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton.icon(
                label: Text('click to add count page',
                    style: TextStyle(fontSize: 12)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CounterPage();
                  }));
                },
                icon: Icon(Icons.send)),
            RaisedButton.icon(
                label:
                    Text('click to text page', style: TextStyle(fontSize: 12)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TextPage();
                  }));
                },
                icon: Icon(Icons.send)),
            RaisedButton.icon(
                label: Text('click to button page',
                    style: TextStyle(fontSize: 12)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ButtonPage();
                  }));
                },
                icon: Icon(Icons.send)),
            RaisedButton.icon(
                label:
                    Text('click to image page', style: TextStyle(fontSize: 12)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ImagePage();
                  }));
                },
                icon: Icon(Icons.send)),
            RaisedButton.icon(
                label: Text('click to switch & checkbox page',
                    style: TextStyle(fontSize: 12)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SwitchCheckboxPage();
                  }));
                },
                icon: Icon(Icons.send)),
            RaisedButton.icon(
                label: Text('click to textfield & form page',
                    style: TextStyle(fontSize: 12)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TextFieldForm();
                  }));
                },
                icon: Icon(Icons.send)),
            RaisedButton.icon(
                label: Text('click to progress indicator page',
                    style: TextStyle(fontSize: 12)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProgressIndicatorPage();
                  }));
                },
                icon: Icon(Icons.send)),
          ],
        ),
      ),
    );
  }
}

// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Wrap(
//           // mainAxisAlignment: MainAxisAlignment.center,
//           spacing: 8.0, // 主轴(水平)方向间距
//           runSpacing: 14.0, // 纵轴（垂直）方向间距
//           alignment: WrapAlignment.center, //沿主轴方向居中
//           children: <Widget>[
//             LinearProgressIndicator(
//               backgroundColor: Colors.grey[200],
//               valueColor: AlwaysStoppedAnimation(Colors.blue),
//             ),
//             LinearProgressIndicator(
//               backgroundColor: Colors.grey[200],
//               valueColor: AlwaysStoppedAnimation(Colors.blue),
//               value: .5,
//             ),
//             CircularProgressIndicator(
//               backgroundColor: Colors.grey[200],
//               valueColor: AlwaysStoppedAnimation(Colors.blue),
//             ),
//             Flex(
//               direction: Axis.horizontal,
//               children: <Widget>[
//                 Expanded(
//                     flex: 1,
//                     child: Container(
//                       height: 30,
//                       color: Colors.red,
//                     )),
//                 Expanded(
//                     flex: 2,
//                     child: Container(
//                       height: 30,
//                       color: Colors.green,
//                     )),
//               ],
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
