import 'package:flutter/material.dart';
import 'package:real_estate/ui/home/widgets/avatar_widget.dart';
import 'package:real_estate/ui/shared/slide_animation_border.dart';
import 'package:real_estate/ui/theme/theme.dart';

class HomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimension.horizontalPadding,
      child: Row(
        children: [
          SlideAnimationRoundBorderWidget(
              color: context.scaffoldBackgroundColor,
              width: 200,
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    color: context.labelSmallColor,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Saint Petersburg",
                    style: context.labelMedium,
                  )
                ],
              )),
          const Spacer(),
          const AvatarWidget()
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
