import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:real_estate/ui/home/animations/marina_fade.dart';
import 'package:real_estate/ui/theme/theme.dart';

class PerfectPlace extends HookWidget {
  const PerfectPlace({super.key});

  @override
  Widget build(BuildContext context) {
    final marinaFade = useMarinaTransition();
    final offSett = useOffsetController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeTransition(
          opacity: marinaFade,
          child: Text(
            "Hi, Marina",
            style: context.labelMedium?.copyWith(fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        FadeTransition(
          opacity: marinaFade,
          child: SlideTransition(
            position: offSett,
            child: Text(
              "let's select your perfect place",
              style: context.displayLarge,
            ),
          ),
        )
      ],
    );
  }
}
