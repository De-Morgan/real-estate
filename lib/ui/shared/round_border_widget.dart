import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:real_estate/ui/theme/theme.dart';

class RoundBorderWidget extends HookWidget {
  const RoundBorderWidget({
    super.key,
    this.radius = Dimension.radius16,
    required this.child,
    this.height,
    this.width,
    this.onTap,
    this.color,
    this.padding = const EdgeInsets.all(16),
  });
  final Widget child;
  final EdgeInsets padding;
  final double radius;
  final double? height;
  final double? width;
  final Color? color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
        ),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
