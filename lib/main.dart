import 'package:flutter/material.dart';

import './pages/counter/index.dart';
import './pages/text/index.dart';
import './pages/button/index.dart';

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
          ],
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   bool _switchSelected = true;
//   bool _checkboxSelected = true;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

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
//             Text(
//               'You have pushed the button this many times~~~~',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//             Text(
//               'a new text row ' * 10,
//               textAlign: TextAlign.right,
//             ),
//             Text(
//               'one line content-> ' * 20,
//               maxLines: 1,
//               textAlign: TextAlign.center,
//               overflow: TextOverflow.ellipsis,
//             ),
//             Text(
//               'a style line',
//               style: TextStyle(
//                   fontSize: 35,
//                   fontFamily: 'Courier',
//                   background: new Paint()..color = Colors.blue,
//                   height: 2),
//             ),
//             Text.rich(TextSpan(children: [
//               TextSpan(text: 'Home: '),
//               TextSpan(
//                   text: 'https://www.m.baidu.com',
//                   style: TextStyle(color: Colors.blue)),
//             ])),
//             DefaultTextStyle(
//               style: TextStyle(color: Colors.green, fontSize: 30),
//               textAlign: TextAlign.start,
//               child: Column(
//                 children: <Widget>[
//                   Text('inherit style'),
//                   Text('inherit style 1'),
//                   Text('no inherit style ',
//                       style: TextStyle(inherit: false, color: Colors.pink)),
//                 ],
//               ),
//             ),
//             RaisedButton(
//               child: Text('nomal'),
//               onPressed: () {},
//             ),
//             FlatButton(
//               child: Text('flat button'),
//               onPressed: () {},
//             ),
//             OutlineButton(
//               child: Text('out line button'),
//               onPressed: () {},
//             ),
//             RaisedButton.icon(
//               icon: Icon(Icons.send),
//               label: Text('发送'),
//               onPressed: () {},
//             ),
//             Image.asset(
//               'images/avatar.jpeg',
//               width: 100,
//             ),
//             Image.network(
//               'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603004652089&di=1269e91b3abfeec1a02f448d5fc629f4&imgtype=0&src=http%3A%2F%2Fb.hiphotos.baidu.com%2Fzhidao%2Fwh%253D450%252C600%2Fsign%3Da587b23df11f3a295a9dddcaac159007%2F500fd9f9d72a60590cfef2f92934349b023bba62.jpg',
//               width: 100,
//             ),
//             Icon(Icons.fingerprint, color: Colors.green),
//             FlatButton.icon(
//                 icon: Icon(Icons.add), onPressed: () {}, label: Text('添加')),
//             Switch(
//                 value: _switchSelected,
//                 onChanged: (value) {
//                   setState(() {
//                     _switchSelected = value;
//                   });
//                 }),
//             Checkbox(
//                 value: _checkboxSelected,
//                 onChanged: (value) {
//                   setState(() {
//                     _checkboxSelected = value;
//                   });
//                 }),
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
