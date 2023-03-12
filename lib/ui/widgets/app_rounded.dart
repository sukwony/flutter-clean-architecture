import 'package:flutter/material.dart';

class AppRounded extends StatelessWidget {
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final Widget child;

  const AppRounded({
    super.key,
    this.radius = .0,
    this.borderWidth = .0,
    this.borderColor = Colors.transparent,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    final child = ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: this.child
    );
    return borderWidth > 0 ? Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: borderWidth,
          color: borderColor
        ),
        borderRadius: BorderRadius.circular(radius + borderWidth)
      ),
      child: child
    ) : child;
  }
}