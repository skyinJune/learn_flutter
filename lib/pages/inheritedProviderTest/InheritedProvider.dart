import 'package:flutter/cupertino.dart';

class InheritedProvider<T> extends InheritedWidget {
  InheritedProvider({
    @required this.data,
    Widget child
  }):super(child: child);
  final T data;

  @override
  bool updateShouldNotify(InheritedProvider<T> old) {
    return true;
  }
}

class ChangeNotifierProvider<T extends ChangeNotifier> extends StatefulWidget {
  ChangeNotifierProvider({
    Key key,
    this.data,
    this.child
  });
  final T data;
  final Widget child;

  static T of<T>(BuildContext context, {bool listen = true}) {
    final provider = listen
      ? context.dependOnInheritedWidgetOfExactType<InheritedProvider<T>>()
      : context.getElementForInheritedWidgetOfExactType<InheritedProvider<T>>()?.widget
      as InheritedProvider<T>;
    return provider.data;
  }

  _ChangeNotifierProviderState<T> createState() => _ChangeNotifierProviderState<T>();
}

class _ChangeNotifierProviderState<T extends ChangeNotifier>
    extends State<ChangeNotifierProvider> {
  void update() {
    setState(() => {});
  }

  void didUpdateWidget(ChangeNotifierProvider<T> oldWidget) {
    if (widget.data != oldWidget.data) {
      oldWidget.data.removeListener(update);
      widget.data.addListener(update);
    }
    super.didUpdateWidget(oldWidget);
  }

  void initState() {
    widget.data.addListener(update);
    super.initState();
  }

  void dispose() {
    widget.data.removeListener(update);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InheritedProvider<T>(
      data: widget.data,
      child: widget.child,
    );
  }
}