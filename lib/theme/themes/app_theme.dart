import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/theme/extensions/app_colors.dart';
import 'package:flutter_theme_etension/theme/extensions/asset_tile_style.dart';
import 'package:flutter_theme_etension/theme/extensions/transaction_tile_style.dart';
import 'package:flutter_theme_etension/theme/helper.dart';
import 'package:flutter_theme_etension/theme/themes/app_text_theme.dart';

class AppTheme {
  const AppTheme._();

  /// colors and styles
  static AppColors get darkColors => const AppColors(
        brightness: Brightness.dark,
        primary: Color(0xFFACDD22),
        onPrimary: Color(0xFF002231),
        secondary: Color(0xFF8859FF),
        onSecondary: Color(0XFFFFFFFF),
        background: Color(0xFF002231),
        onBackground: Color(0xFFFFFFFF),
        surface: Color(0xFF002E42),
        onSurface: Color(0xFFFFFFFF),
        surfaceVariant: Color(0xFF406271),
        onSurfaceVariant: Color(0xFFBFCBD0),
        success: Color(0xFF27BA62),
        onSuccess: Color(0xFFFFFFFF),
        error: Color(0xFFED4460),
        onError: Color(0xFFFFFFFF),

        /// Custom colors
        tileBackgroundColor: Color(0XFF002E42),
        defaultText: Color(0XFFFFFFFF),
        lightText: Color(0XFFBFCBD0),
        defaultIcon: Color(0XFFBFCBD0),
        disabledIcon: Color(0XFF8097A0),
        disabledSurface: Color(0XFF8097A0),
        onDisabledSurface: Color(0XFFBFCBD0),
        linearGradient: LinearGradient(
          colors: [
            Color(0xFF27BA62),
            Color(0xFF137A61),
            Color(0xFF0B6060),
          ],
        ),
      );

  static AppColors get lightColors => const AppColors(
        brightness: Brightness.dark,
        primary: Color(0xFFACDD22),
        onPrimary: Color(0xFF002231),
        secondary: Color(0xFFACDD22),
        onSecondary: Color(0XFFFFFFFF),
        background: Color(0xFF002231),
        onBackground: Color(0xFFFFFFFF),
        surface: Color(0xFF002E42),
        onSurface: Color(0xFFFFFFFF),
        surfaceVariant: Color(0xFF406271),
        onSurfaceVariant: Color(0xFFBFCBD0),
        success: Color(0xFF27BA62),
        onSuccess: Color(0xFFFFFFFF),
        error: Color(0xFFED4460),
        onError: Color(0xFFFFFFFF),

        /// Custom colors
        tileBackgroundColor: Color(0XFF002E42),
        defaultText: Color(0XFFFFFFFF),
        lightText: Color(0XFFBFCBD0),
        defaultIcon: Color(0XFFBFCBD0),
        disabledIcon: Color(0XFF8097A0),
        disabledSurface: Color(0XFF8097A0),
        onDisabledSurface: Color(0XFFBFCBD0),
        linearGradient: LinearGradient(
          colors: [
            Color(0xFF27BA62),
            Color(0xFF137A61),
            Color(0xFF0B6060),
          ],
        ),
      );

  static TransactionTileStyle get transactionTileStyle =>
      const TransactionTileStyle(
        backgroundColor: Color(0xFF002E42),
        borderRadius: 0,
      );

  static AssetTileStyle get assetTileStyle => const AssetTileStyle(
        backgroundColor: Color(0xFF002E42),
        borderRadius: 0,
      );

  /// theme
  static ThemeData get darkTheme {
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

      scaffoldBackgroundColor: darkColors.background,

      /// TYPOGRAPHY
      textTheme: AppTextTheme.textTheme,

      /// COMPONENT THEMES
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: darkColors.onBackground,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: AppTextTheme.labelMedium.copyWith(color: darkColors.error),
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
        focusedErrorBorder: darkColors.error.getOutlineBorder,
        errorBorder: darkColors.error.getOutlineBorder,
        focusedBorder: Colors.transparent.getOutlineBorder,
        iconColor: darkColors.onSurfaceVariant,
        enabledBorder: Colors.transparent.getOutlineBorder,
        disabledBorder: Colors.transparent.getOutlineBorder,
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
        assetTileStyle,
        transactionTileStyle,
      ],
    );
  }

  static ThemeData get lighTheme {
    return darkTheme.copyWith(
      extensions: <ThemeExtension>[
        lightColors,
        assetTileStyle,
        transactionTileStyle,
      ],
    );
  }
}
