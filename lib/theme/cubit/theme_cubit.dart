import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_theme_etension/theme/themes/app_theme.dart';
import 'package:flutter_theme_etension/theme/themes/christmas_theme.dart';
import 'package:flutter_theme_etension/theme/themes/diwali_theme.dart';
import 'package:flutter_theme_etension/theme/themes/eid_theme.dart';
import 'package:flutter_theme_etension/theme/thme_type.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit(this.sharedPreferences) : super(const ThemeState());

  final SharedPreferences sharedPreferences;

  Future<void> init() async {
    try {
      ThemeType themeType =
          ThemeType.values[sharedPreferences.getInt('THEME_TYPE') ?? 0];
      ThemeMode themeMode =
          ThemeMode.values[sharedPreferences.getInt('THEME_MODE') ?? 0];

      changeThemeType(themeType);
      changeThemeMode(themeMode);
    } catch (_) {}
  }

  Future<void> changeThemeType(ThemeType type) async {
    await sharedPreferences.setInt('THEME_TYPE', type.index);

    emit(state.copyWith(selectedThemeType: type));
  }

  Future<void> changeThemeMode(ThemeMode mode) async {
    await sharedPreferences.setInt('THEME_MODE', mode.index);

    emit(state.copyWith(themeMode: mode));
  }
}
