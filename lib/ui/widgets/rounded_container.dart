import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final Widget child;

  const RoundedContainer({
    super.key,
    this.radius = .0,
    this.borderWidth = .0,
    this.borderColor = Colors.transparent,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(radius);

    return ClipRRect(
      borderRadius: borderRadius,
      child: borderWidth > 0 ? Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          border: Border.all(
            width: borderWidth,
            color: borderColor
          )
        ),
        child: child
      ) : child,
    );
  }
}