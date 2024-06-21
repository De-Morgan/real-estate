import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:real_estate/ui/home/animations/use_scale_transition.dart';

const _animationDuration = Duration(milliseconds: 600);

Animation<double> useMarinaTransition() {
  final offsetAnimation = useAnimationController(duration: _animationDuration);
  final animation = useScaleTransition();
  animation.addListener(() {
    if (animation.isCompleted) {
      Future.delayed(_animationDuration, offsetAnimation.forward);
    }
  });
  return offsetAnimation;
}

Animation<Offset> useOffsetController() {
  const startOffset = Offset(0.0, 0.2);
  const endOffset = Offset(0.0, 0.0);
  final offsetAnimation = useAnimationController(duration: _animationDuration);
  final animationController = useMarinaTransition();
  animationController.addListener(() {
    if (animationController.isCompleted) {
      offsetAnimation.forward();
    }
  });
  return Tween<Offset>(begin: startOffset, end: endOffset).animate(
    CurvedAnimation(parent: offsetAnimation, curve: Curves.easeIn),
  );
}
