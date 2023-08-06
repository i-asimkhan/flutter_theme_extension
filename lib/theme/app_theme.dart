import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/theme/app_colors.dart';
import 'package:flutter_theme_etension/theme/app_text_theme.dart';

class AppTheme {
  const AppTheme._();

  static AppColors get darkColors => const AppColors(
        brightness: Brightness.dark,
        primary: Color(0xFFACDD22),
        onPrimary: Color(0xFF002231),
        secondary: Color(0xFF8859FF),
        onSecondary: Colors.white,
        error: Color(0xFFDB1A3A),
        onError: Colors.white,
        background: Color(0xFF18262D),
        onBackground: Colors.white,
        surface: Color(0xFF001721),
        onSurface: Colors.white,
        surfaceVariant: Color(0xFF8097A0),
        onSurfaceVariant: Color(0xFFBFCBD0),
        cardBgColor: Color(0XFF2F393E),
        success: Color(0xFF27BA62),
        onSuccess: Colors.white,
        linearGradient: LinearGradient(
          colors: [Color(0xFF27BA62), Color(0xFF137A61), Color(0xFF0B6060)],
        ),
      );

  static get darkTheme {
    return ThemeData(
      /// COLOR
      brightness: Brightness.dark,
      colorScheme: ColorScheme(
        brightness: darkColors.brightness,
        primary: darkColors.primary,
        onPrimary: darkColors.onPrimary,
        secondary: darkColors.secondary,
        onSecondary: darkColors.onSecondary,
        error: darkColors.error,
        onError: darkColors.onError,
        background: darkColors.background,
        onBackground: darkColors.onBackground,
        surface: darkColors.surface,
        onSurface: darkColors.onSurface,
        surfaceVariant: darkColors.surfaceVariant,
        onSurfaceVariant: darkColors.onSurfaceVariant,
      ),
      backgroundColor: darkColors.background,
      scaffoldBackgroundColor: darkColors.background,
      errorColor: darkColors.error,

      /// TYPOGRAPHY
      textTheme: TextTheme(
        displayLarge:
            AppTextTheme.displayLarge.copyWith(color: darkColors.onSurface),
        displayMedium:
            AppTextTheme.displayMedium.copyWith(color: darkColors.onSurface),
        displaySmall:
            AppTextTheme.displaySmall.copyWith(color: darkColors.onSurface),
        headlineLarge:
            AppTextTheme.headlineLarge.copyWith(color: darkColors.onSurface),
        headlineMedium:
            AppTextTheme.headlineMedium.copyWith(color: darkColors.onSurface),
        headlineSmall:
            AppTextTheme.headlineSmall.copyWith(color: darkColors.onSurface),
        titleLarge:
            AppTextTheme.titleLarge.copyWith(color: darkColors.onSurface),
        titleMedium:
            AppTextTheme.titleMedium.copyWith(color: darkColors.onSurface),
        titleSmall:
            AppTextTheme.titleSmall.copyWith(color: darkColors.onSurface),
        bodyLarge: AppTextTheme.bodyLarge.copyWith(color: darkColors.onSurface),
        bodyMedium:
            AppTextTheme.bodyMedium.copyWith(color: darkColors.onSurface),
        bodySmall: AppTextTheme.bodySmall.copyWith(color: darkColors.onSurface),
        labelLarge:
            AppTextTheme.labelLarge.copyWith(color: darkColors.onSurface),
        labelMedium:
            AppTextTheme.labelMedium.copyWith(color: darkColors.onSurface),
        labelSmall:
            AppTextTheme.labelSmall.copyWith(color: darkColors.onSurface),
      ),

      /// COMPONENT THEMES
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: darkColors.onBackground,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: AppTextTheme.labelMedium.copyWith(color: Colors.red),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          side: BorderSide(color: darkColors.onSurface),
          foregroundColor: darkColors.onSurface,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkColors.background,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: darkColors.surface,
        errorStyle: AppTextTheme.bodySmall.copyWith(color: darkColors.error),
        helperStyle:
            AppTextTheme.bodySmall.copyWith(color: darkColors.onSurfaceVariant),
        hintStyle: AppTextTheme.bodyMedium
            .copyWith(color: darkColors.onSurfaceVariant),
        focusedErrorBorder: _getBorder(darkColors.error),
        errorBorder: _getBorder(darkColors.error),
        focusedBorder: _getBorder(Colors.transparent),
        iconColor: darkColors.onSurfaceVariant,
        enabledBorder: _getBorder(Colors.transparent),
        disabledBorder: _getBorder(Colors.transparent),
        errorMaxLines: 3,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: darkColors.primary,
        unselectedLabelColor: darkColors.onSurfaceVariant,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: darkColors.primary,
              width: 2,
            ),
          ),
        ),
      ),

      ///Extensions
      extensions: <ThemeExtension>[
        darkColors,
      ],
    );
  }

  static OutlineInputBorder _getBorder(Color borderColor) => OutlineInputBorder(
        borderSide: BorderSide(color: borderColor, width: 1.5),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      );
}
