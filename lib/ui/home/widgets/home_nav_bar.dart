import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:real_estate/ui/home/animations/nav_bar_transition.dart';
import 'package:real_estate/ui/home/widgets/app_button_navigation.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return HookConsumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final animation = useNavBarTransition();
        return AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Positioned(
                bottom: animation.value * 50, left: 0, right: 0, child: child!);
          },
          child: FadeTransition(
              opacity: animation,
              child: const Center(child: BottomNavWidget())),
        );
      },
    );
  }
}
