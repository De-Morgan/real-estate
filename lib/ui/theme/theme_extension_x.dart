part of 'theme.dart';

extension ThemeExtensionX on BuildContext {
  ThemeData get themeData => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;

  TextStyle? get labelSmall => textTheme.labelSmall;
  TextStyle? get labelMedium => textTheme.labelMedium;
  TextStyle? get displaySmall => textTheme.displaySmall;
  TextStyle? get displayMedium => textTheme.displayMedium;
  TextStyle? get displayLarge => textTheme.displayLarge;
  TextStyle? get titleMedium => textTheme.titleMedium;

  Color? get labelSmallColor => labelSmall?.color;
  Color? get displaySmallColor => displaySmall?.color;
  Color get primaryColor => themeData.primaryColor;
  Color get scaffoldBackgroundColor => themeData.scaffoldBackgroundColor;

  T customTheme<T>() => Theme.of(this).extension<T>()!;
}
