import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate/ui/theme/theme.dart';

class BottomNavWidget extends ConsumerWidget {
  const BottomNavWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: const Color(0xff000000),
          borderRadius: BorderRadius.circular(100)),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _NavItem(iconData: TeenyIcons.search),
          _NavItem(iconData: AntDesign.message_fill),
          _NavItem(
            iconData: AntDesign.home_fill,
            selected: true,
          ),
          _NavItem(iconData: AntDesign.heart_fill),
          _NavItem(iconData: TeenyIcons.user),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.iconData,
    this.selected = false,
  });
  final IconData iconData;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: CircleAvatar(
        radius: 22,
        foregroundColor: Colors.white,
        backgroundColor: switch (selected) {
          true => context.primaryColor,
          false => Colors.black
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: Icon(iconData),
        ),
      ),
    );
  }
}
