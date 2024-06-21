import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

const _animationDuration = Duration(seconds: 2);

Animation<double> useScaleTransition() {
  return useAnimationController(duration: _animationDuration)..forward();
}

bool _called = false;
Animation<double> useFadeOnSlideTransition() {
  _called = false;
  final offsetAnimation =
      useAnimationController(duration: const Duration(milliseconds: 600));
  final animationCntrl = useScaleTransition();
  animationCntrl.addListener(() {
    if (animationCntrl.value >= 0.8) {
      if (!_called) {
        offsetAnimation.forward();
        _called = true;
      }
    }
  });
  return offsetAnimation;
}
