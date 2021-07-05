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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                'http://tiebapic.baidu.com/forum/w%3D580%3B/sign=974e7e2540950a7b75354ecc3aea63d9/bf096b63f6246b60d7759767b6f81a4c510fa2ae.jpg',
                width: 200,
              ),
            ),
            Icon(
              Icons.fingerprint,
              color: Colors.green,
            ),
            FadeInImage.assetNetwork(
                placeholder: 'images/avatar.jpeg',
                image: 'https://gameplus-platform.cdn.bcebos.com/gameplus-platform/upload/file/source/ed86296e7704ca7d48fcfafc118cb6aa.jpeg')
          ],
        ),
      ),
    );
  }
}
