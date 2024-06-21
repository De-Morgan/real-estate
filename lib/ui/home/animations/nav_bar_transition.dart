import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:real_estate/ui/home/animations/use_scale_transition.dart';

Animation<double> useHomeItemsTransition() {
  final offsetAnimation =
      useAnimationController(duration: const Duration(seconds: 1));
  final animationCntrl = useScaleTransition();
  animationCntrl.addListener(() {
    if (animationCntrl.isCompleted) {
      Future.delayed(const Duration(seconds: 3), offsetAnimation.forward);
    }
  });
  return offsetAnimation;
}

Animation<double> useNavBarTransition() {
  final offsetAnimation =
      useAnimationController(duration: const Duration(milliseconds: 600));
  final animationCntrl = useHomeItemsTransition();
  animationCntrl.addListener(() {
    if (animationCntrl.isCompleted) {
      offsetAnimation.forward();
    }
  });
  return offsetAnimation;
}
