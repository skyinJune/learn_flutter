import 'package:flutter/material.dart';

class TextFieldForm extends StatefulWidget {
  @override
  _TextFieldForm createState() => _TextFieldForm();
}

class _TextFieldForm extends State<TextFieldForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('textfield & form page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: '用户名',
                  hintText: '手机号或邮箱',
                  prefixIcon: Icon(Icons.person)),
            ),
            TextField(
                decoration: InputDecoration(
                    labelText: '密码',
                    hintText: '您的登录密码',
                    prefixIcon: Icon(Icons.lock)),
                obscureText: true)
          ],
        ),
      ),
    );
  }
}
