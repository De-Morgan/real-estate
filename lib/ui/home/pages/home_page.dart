import 'package:flutter/material.dart';
import 'package:real_estate/ui/home/widgets/appbar.dart';
import 'package:real_estate/ui/home/widgets/buy_rent_widget.dart';
import 'package:real_estate/ui/home/widgets/home_item_widget.dart';
import 'package:real_estate/ui/home/widgets/home_nav_bar.dart';
import 'package:real_estate/ui/home/widgets/perfect_place_widget.dart';
import 'package:real_estate/ui/theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeGradient = context.customTheme<HomeGradientTheme>();
    return Stack(
      children: [
        Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  homeGradient.firstColor,
                  homeGradient.secondColor,
                ],
                stops: const [0.1, 1],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeAppBarWidget(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: Dimension.horizontalPadding,
                            child: Column(
                              children: [
                                SizedBox(height: 32),
                                PerfectPlace(),
                                SizedBox(height: 32),
                                BuyRentWidget(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomSheet: const HomeBottomSheet(),
        ),
        const HomeNavBar(),
      ],
    );
  }
}
