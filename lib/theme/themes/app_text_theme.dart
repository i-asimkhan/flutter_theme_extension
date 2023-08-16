import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/theme/themes/app_theme.dart';

class AppTextTheme {
  const AppTextTheme._();

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: displayLarge.copyWith(color: AppTheme.darkColors.defaultText),
    displayMedium:
        displayMedium.copyWith(color: AppTheme.darkColors.defaultText),
    displaySmall: displaySmall.copyWith(color: AppTheme.darkColors.defaultText),
    headlineLarge:
        headlineLarge.copyWith(color: AppTheme.darkColors.defaultText),
    headlineMedium:
        headlineMedium.copyWith(color: AppTheme.darkColors.defaultText),
    headlineSmall:
        headlineSmall.copyWith(color: AppTheme.darkColors.defaultText),
    titleLarge: titleLarge.copyWith(color: AppTheme.darkColors.defaultText),
    titleMedium: titleMedium.copyWith(color: AppTheme.darkColors.defaultText),
    titleSmall: titleSmall.copyWith(color: AppTheme.darkColors.defaultText),
    bodyLarge: bodyLarge.copyWith(color: AppTheme.darkColors.defaultText),
    bodyMedium: bodyMedium.copyWith(color: AppTheme.darkColors.defaultText),
    bodySmall: bodySmall.copyWith(color: AppTheme.darkColors.defaultText),
    labelLarge: labelLarge.copyWith(color: AppTheme.darkColors.defaultText),
    labelMedium: labelMedium.copyWith(color: AppTheme.darkColors.defaultText),
    labelSmall: labelSmall.copyWith(color: AppTheme.darkColors.defaultText),
  );

  static TextTheme textTheme = TextTheme(
    displayLarge:
        displayLarge.copyWith(color: AppTheme.lightColors.defaultText),
    displayMedium:
        displayMedium.copyWith(color: AppTheme.lightColors.defaultText),
    displaySmall:
        displaySmall.copyWith(color: AppTheme.lightColors.defaultText),
    headlineLarge:
        headlineLarge.copyWith(color: AppTheme.lightColors.defaultText),
    headlineMedium:
        headlineMedium.copyWith(color: AppTheme.lightColors.defaultText),
    headlineSmall:
        headlineSmall.copyWith(color: AppTheme.lightColors.defaultText),
    titleLarge: titleLarge.copyWith(color: AppTheme.lightColors.defaultText),
    titleMedium: titleMedium.copyWith(color: AppTheme.lightColors.defaultText),
    titleSmall: titleSmall.copyWith(color: AppTheme.lightColors.defaultText),
    bodyLarge: bodyLarge.copyWith(color: AppTheme.lightColors.defaultText),
    bodyMedium: bodyMedium.copyWith(color: AppTheme.lightColors.defaultText),
    bodySmall: bodySmall.copyWith(color: AppTheme.lightColors.defaultText),
    labelLarge: labelLarge.copyWith(color: AppTheme.lightColors.defaultText),
    labelMedium: labelMedium.copyWith(color: AppTheme.lightColors.defaultText),
    labelSmall: labelSmall.copyWith(color: AppTheme.lightColors.defaultText),
  );

  static const TextStyle displayLarge =
      TextStyle(fontSize: 57, fontWeight: FontWeight.w700);
  static const TextStyle displayMedium =
      TextStyle(fontSize: 45, fontWeight: FontWeight.w700);
  static const TextStyle displaySmall =
      TextStyle(fontSize: 36, fontWeight: FontWeight.w700);

  static const TextStyle headlineLarge =
      TextStyle(fontSize: 32, fontWeight: FontWeight.w700);
  static const TextStyle headlineMedium =
      TextStyle(fontSize: 28, fontWeight: FontWeight.w700);
  static const TextStyle headlineSmall =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w700);

  static const TextStyle titleLarge =
      TextStyle(fontSize: 22, fontWeight: FontWeight.w700);
  static const TextStyle titleMedium =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w700);
  static const TextStyle titleSmall =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w700);

  static const TextStyle bodyLarge =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
  static const TextStyle bodyMedium =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w400);
  static const TextStyle bodySmall =
      TextStyle(fontSize: 12, fontWeight: FontWeight.w400);

  static const TextStyle labelLarge =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w700);
  static const TextStyle labelMedium =
      TextStyle(fontSize: 12, fontWeight: FontWeight.w600);
  static const TextStyle labelSmall =
      TextStyle(fontSize: 8, fontWeight: FontWeight.w700, letterSpacing: 0);
}

extension AppTextThemeX on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
