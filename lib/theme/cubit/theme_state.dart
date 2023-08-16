part of 'theme_cubit.dart';

class ThemeState {
  const ThemeState({
    this.selectedThemeType = ThemeType.normal,
    this.themeMode = ThemeMode.system,
  });

  final ThemeType selectedThemeType;
  final ThemeMode themeMode;

  ThemeState copyWith({
    ThemeType? selectedThemeType,
    ThemeMode? themeMode,
  }) {
    return ThemeState(
      selectedThemeType: selectedThemeType ?? this.selectedThemeType,
      themeMode: themeMode ?? this.themeMode,
    );
  }

  ThemeData get lightTheme {
    switch (selectedThemeType) {
      case ThemeType.normal:
        return AppTheme.lightTheme;

      case ThemeType.eid:
        return EidTheme.lightTheme;

      case ThemeType.diwali:
        return DiwaliTheme.lightTheme;

      case ThemeType.christmas:
        return ChristmasTheme.lightTheme;
    }
  }

  ThemeData get darkTheme {
    switch (selectedThemeType) {
      case ThemeType.normal:
        return AppTheme.darkTheme;

      case ThemeType.eid:
        return EidTheme.darkTheme;

      case ThemeType.diwali:
        return DiwaliTheme.darkTheme;

      case ThemeType.christmas:
        return ChristmasTheme.darkTheme;
    }
  }
}
