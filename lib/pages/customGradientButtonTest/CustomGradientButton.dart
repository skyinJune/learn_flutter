import 'package:flutter/material.dart';

class CustomGradientButton extends StatelessWidget {
  CustomGradientButton({
    this.colors,
    this.width,
    this.height,
    this.borderRadius,
    this.onPressed,
    @required this.child,
  });

  final List<Color> colors; // 渐变色

  final double width; // 宽度
  final double height; // 高度

  final BorderRadius borderRadius; // 圆角
  final Widget child;

  final GestureTapCallback onPressed; // 点击回调

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: colors), borderRadius: borderRadius),
      child: InkWell(
        splashColor: colors.last,
        highlightColor: Colors.transparent,
        borderRadius: borderRadius,
        onTap: onPressed,
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: width, height: height),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Center(
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
