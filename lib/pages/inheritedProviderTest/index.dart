import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './InheritedProvider.dart';

class InheritedProviderTestRoute extends StatefulWidget {
  _InheritedProviderTestRoute createState() => _InheritedProviderTestRoute();
}

class _InheritedProviderTestRoute extends State<InheritedProviderTestRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inherited Provider Test Route'),
      ),
      body: Center(
        child: ChangeNotifierProvider<CartModel>(
          data: CartModel(),
          child: Builder(builder: (context) {
            return Column(
              children: <Widget>[
                Consumer<CartModel>(
                    builder: (context, cart) =>
                        Text('total price is ${cart.totalPrice}')
                ),
                Builder(builder: (context) {
                  print("RaisedButton build");
                  return RaisedButton(
                    child: Text('add good'),
                    onPressed: () {
                      var cart = ChangeNotifierProvider.of<CartModel>(context, listen: false);
                      cart.add(Item(2, 20.0));
                    },
                  );
                })
              ],
            );
          },),
        ),
      ),
    );
  }
}

class Item {
  Item(this.count, this.price);
  int count;
  double price;
}

class CartModel extends ChangeNotifier {
  final List<Item> _items = [];

  //禁止改变购物车里的商品信息
  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  double get totalPrice =>
      _items.fold(0, (value, item) => value + item.count * item.price);

  void add(Item item) {
    _items.add(item);
    // 通知监听器，重新构建InheritedProvider, 更新状态
    notifyListeners();
  }
}

class Consumer<T> extends StatelessWidget {
  Consumer({
    Key key,
    @required this.builder,
    this.child
  });

  final Widget child;
  final Widget Function(BuildContext context, T value) builder;

  @override
  Widget build(BuildContext context) {
    return builder(
      context,
      ChangeNotifierProvider.of<T>(context)
    );
  }
}