import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:real_estate/ui/home/animations/nav_bar_transition.dart';
import 'package:real_estate/ui/shared/image_path.dart';
import 'package:real_estate/ui/theme/theme.dart';

class HomeBottomSheet extends HookWidget {
  const HomeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final parent = useHomeItemsTransition();
    final curveAni = Tween(begin: 0.0, end: 550.0).animate(
        CurvedAnimation(parent: parent, curve: Curves.fastEaseInToSlowEaseOut));
    return AnimatedBuilder(
      animation: parent,
      builder: (context, child) {
        return Container(
          height: curveAni.value,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: context.scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(Dimension.radius32)),
          child: child,
        );
      },
      child: const HomeItemWidget(),
    );
  }
}

class HomeItemWidget extends StatelessWidget {
  const HomeItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _FirstItem(),
        SizedBox(
          height: 8,
        ),
        _SecondItem()
      ],
    );
  }
}

class _FirstItem extends StatelessWidget {
  const _FirstItem();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimension.radius32),
          image: const DecorationImage(
              fit: BoxFit.cover, image: AssetImage(ImagesPath.image2))),
    );
  }
}

class _SecondItem extends StatelessWidget {
  const _SecondItem();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius16),
                image: const DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(ImagesPath.image3))),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: SizedBox(
            height: 300,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius16),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(ImagesPath.image1))),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius16),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(ImagesPath.image4))),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
