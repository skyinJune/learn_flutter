import 'package:flutter/material.dart';

class TextFieldForm extends StatefulWidget {
  @override
  _TextFieldForm createState() => _TextFieldForm();
}

class _TextFieldForm extends State<TextFieldForm> {
  TextEditingController _unameController = TextEditingController();
  TextEditingController _upaswordController = TextEditingController();

  FocusNode _unameFocusNode = FocusNode();
  FocusNode _upaswordFocusNode = FocusNode();

  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // 可以用controll的方式控制输入的内容
    _unameController.addListener(() {
      print('uname input :' + _unameController.text);
    });

    _unameController.text = '用户12345';
    _unameController.selection = TextSelection(
        baseOffset: 2, extentOffset: _unameController.text.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('textfield & form page'),
      ),
      body: Center(
          child: Form(
        key: _formKey,
        autovalidate: true,
        child: Column(
          children: <Widget>[
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: '用户名',
                  hintText: '手机号或邮箱',
                  prefixIcon: Icon(Icons.person)),
              controller: _unameController,
              onChanged: (value) {
                // print('uname: ' + value);
              },
              focusNode: _unameFocusNode,
              validator: (v) {
                return v.trim().length > 0 ? null : '用户名不能为空';
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: '密码',
                  hintText: '您的登录密码',
                  prefixIcon: Icon(Icons.lock)),
              controller: _upaswordController,
              onChanged: (value) {
                // onChange也可以用来监听变化
                print('upasword: ' + value);
              },
              obscureText: true,
              focusNode: _upaswordFocusNode,
              validator: (v) {
                return v.trim().length > 5 ? null : '密码不能少于6位';
              },
            ),
            RaisedButton(
                child: Text('移动焦点'),
                onPressed: () {
                  FocusScope.of(context).requestFocus(_upaswordFocusNode);
                }),
            RaisedButton(
                child: Text('隐藏键盘'),
                onPressed: () {
                  _unameFocusNode.unfocus();
                  _upaswordFocusNode.unfocus();
                }),
            FlatButton(
              child: Text('提交'),
              onPressed: () {
                if ((_formKey.currentState as FormState).validate()) {
                  print('验证通过');
                } else {
                  print('验证失败');
                }
              },
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            )
          ],
        ),
      )),
    );
  }
}
