import 'package:flutter/material.dart';

class AppTextTheme {
  const AppTextTheme._();

  static const TextTheme textTheme = TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
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

extension AppThemeX on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
