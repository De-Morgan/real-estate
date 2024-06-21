import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:real_estate/ui/home/animations/marina_fade.dart';

const _animationDuration = Duration(seconds: 2);

bool _called = false;
Animation<double> useBuyRentAnimation() {
  _called = false;
  final animation = useAnimationController(duration: _animationDuration);
  final offsetAnimation = useMarinaTransition();
  offsetAnimation.addListener(() {
    if (offsetAnimation.value > 0.7) {
      if (!_called) {
        animation.forward();
        _called = true;
      }
    }
  });
  return animation;
}
