import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:real_estate/ui/home/pages/home_page.dart';
import 'package:real_estate/ui/theme/theme.dart';

void main() {
  runApp(const ProviderScope(child: RealEstateApp()));
}

class RealEstateApp extends StatelessWidget {
  const RealEstateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real Estate',
      theme: LightTheme.theme,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
