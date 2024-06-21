import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:real_estate/ui/home/animations/use_scale_transition.dart';
import 'package:real_estate/ui/shared/image_path.dart';

class AvatarWidget extends HookWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = useScaleTransition();
    return ScaleTransition(
      scale: scale,
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage(ImagesPath.image5))),
      ),
    );
  }
}
