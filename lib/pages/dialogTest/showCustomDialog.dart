import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<T> showCustomDialog<T>({
  @required BuildContext context,
  bool barrierDismissible = true,
  WidgetBuilder builder
}) {
  final ThemeData themeData = Theme.of(context, shadowThemeOnly: true);
  return showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> animation2) {
        final pageChild = Builder(builder: builder);
        return SafeArea(
          child: Builder(builder: (BuildContext context) {
            return themeData != null
                ? Theme(data: themeData, child: pageChild,)
                : pageChild;
          })
        );
      },
    barrierDismissible: barrierDismissible,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black87,
    transitionDuration: const Duration(milliseconds: 150),
    transitionBuilder: _transitionBuilder
  );
}

Widget _transitionBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> animation2,
    Widget child
    ) {
  return ScaleTransition(
    scale: CurvedAnimation(
      parent: animation,
      curve: Curves.easeOut
    ),
    child: child,
  );
}