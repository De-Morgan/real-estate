part of 'theme.dart';

class LightTheme {
  static const _primaryColor = _AppColors.kFC9D11;

  static ThemeData get theme => ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: _AppColors.kWhite,
          primaryColor: _primaryColor,
          colorScheme: ColorScheme.fromSeed(seedColor: _primaryColor),
          textTheme: TextTheme(
            labelSmall: AppTextStyle.normal400Size14
                .copyWith(color: _AppColors.kA5957E),
            labelMedium: AppTextStyle.medium500Size16.copyWith(
              color: _AppColors.kA5957E,
            ),
            displayLarge: AppTextStyle.normal400Size14.copyWith(
              fontSize: 40,
              color: _AppColors.k232220,
            ),
          ),
          extensions: const [
            HomeGradientTheme(
              firstColor: _AppColors.kF8F8F7,
              secondColor: _AppColors.kF9E8D2,
            )
          ]);
}
