import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  ImagePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(
              'images/avatar.jpeg',
              width: 100,
            ),
            Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603004652089&di=1269e91b3abfeec1a02f448d5fc629f4&imgtype=0&src=http%3A%2F%2Fb.hiphotos.baidu.com%2Fzhidao%2Fwh%253D450%252C600%2Fsign%3Da587b23df11f3a295a9dddcaac159007%2F500fd9f9d72a60590cfef2f92934349b023bba62.jpg',
              width: 100,
            ),
            Icon(
              Icons.fingerprint,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
