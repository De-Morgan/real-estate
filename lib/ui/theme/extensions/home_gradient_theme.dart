part of '../theme.dart';

class HomeGradientTheme extends ThemeExtension<HomeGradientTheme> {
  final Color firstColor;
  final Color secondColor;

  const HomeGradientTheme({
    required this.firstColor,
    required this.secondColor,
  });

  @override
  ThemeExtension<HomeGradientTheme> copyWith({
    Color? firstColor,
    Color? secondColor,
  }) {
    return HomeGradientTheme(
        firstColor: firstColor ?? this.firstColor,
        secondColor: secondColor ?? this.secondColor);
  }

  @override
  ThemeExtension<HomeGradientTheme> lerp(
      ThemeExtension<HomeGradientTheme>? other, double t) {
    if (other is! HomeGradientTheme) {
      return this;
    }
    return HomeGradientTheme(
      firstColor: Color.lerp(firstColor, other.firstColor, t)!,
      secondColor: Color.lerp(secondColor, other.secondColor, t)!,
    );
  }
}
