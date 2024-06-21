import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:real_estate/ui/home/animations/buy_rent_transition.dart';
import 'package:real_estate/ui/home/providers/count_provider.dart';
import 'package:real_estate/ui/shared/number_formatter.dart';
import 'package:real_estate/ui/shared/round_border_widget.dart';
import 'package:real_estate/ui/theme/theme.dart';

class BuyRentWidget extends HookWidget {
  const BuyRentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final animation = useBuyRentAnimation();
    return Row(
      children: [
        Expanded(
            child:
                ScaleTransition(scale: animation, child: const _BuyWidget())),
        const SizedBox(
          width: 16,
        ),
        Expanded(
            child:
                ScaleTransition(scale: animation, child: const _RentWidget()))
      ],
    );
  }
}

class _BuyWidget extends StatelessWidget {
  const _BuyWidget();
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 90,
      backgroundColor: context.primaryColor,
      child: Column(
        children: [
          const Spacer(),
          Text(
            "BUY",
            style: AppTextStyle.normal300Size14
                .copyWith(fontSize: 18, color: context.scaffoldBackgroundColor),
          ),
          const Spacer(
            flex: 2,
          ),
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final count = ref.watch(countProvider(1));
              return Text(
                AppNumberFormatter.formatNumber(count),
                style: AppTextStyle.semiBold600Size16.copyWith(
                    fontSize: 28, color: context.scaffoldBackgroundColor),
              );
            },
          ),
          Text(
            "offers",
            style: AppTextStyle.normal300Size14
                .copyWith(fontSize: 18, color: context.scaffoldBackgroundColor),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}

class _RentWidget extends StatelessWidget {
  const _RentWidget();

  @override
  Widget build(BuildContext context) {
    return RoundBorderWidget(
      color: context.scaffoldBackgroundColor,
      radius: Dimension.radius28,
      height: 160,
      width: 160,
      child: Column(
        children: [
          const Spacer(),
          Text(
            "RENT",
            style: AppTextStyle.normal300Size14
                .copyWith(fontSize: 18, color: context.labelSmallColor),
          ),
          const Spacer(
            flex: 2,
          ),
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final count = ref.watch(countProvider(2));
              return Text(
                AppNumberFormatter.formatNumber(count),
                style: AppTextStyle.semiBold600Size16
                    .copyWith(fontSize: 28, color: context.labelSmallColor),
              );
            },
          ),
          Text(
            "offers",
            style: AppTextStyle.normal300Size14
                .copyWith(fontSize: 18, color: context.labelSmallColor),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
