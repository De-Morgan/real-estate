import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:real_estate/ui/home/animations/use_scale_transition.dart';
import 'package:real_estate/ui/shared/round_border_widget.dart';
import 'package:real_estate/ui/theme/theme.dart';

class SlideAnimationRoundBorderWidget extends HookWidget {
  const SlideAnimationRoundBorderWidget({
    super.key,
    this.radius = Dimension.radius16,
    required this.child,
    this.height,
    required this.width,
    this.onTap,
    this.color,
    this.padding = const EdgeInsets.all(16),
  });
  final Widget child;
  final EdgeInsets padding;
  final double radius;
  final double? height;
  final double width;
  final Color? color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final slide = useScaleTransition();
    final fade = useFadeOnSlideTransition();
    return AnimatedBuilder(
      animation: slide,
      builder: (context, Widget? child) {
        return RoundBorderWidget(
            color: color,
            radius: radius,
            height: height,
            onTap: onTap,
            padding: padding,
            width: width * slide.value,
            child: child!);
      },
      child: FadeTransition(opacity: fade, child: child),
    );
  }
}
