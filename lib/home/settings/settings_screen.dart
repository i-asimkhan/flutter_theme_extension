import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_theme_etension/theme/cubit/theme_cubit.dart';
import 'package:flutter_theme_etension/theme/extensions/app_colors.dart';
import 'package:flutter_theme_etension/theme/themes/app_text_theme.dart';
import 'package:flutter_theme_etension/theme/themes/app_theme.dart';
import 'package:flutter_theme_etension/theme/themes/christmas_theme.dart';
import 'package:flutter_theme_etension/theme/themes/diwali_theme.dart';
import 'package:flutter_theme_etension/theme/themes/eid_theme.dart';
import 'package:flutter_theme_etension/theme/thme_type.dart';
import 'package:flutter_theme_etension/utils/strings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 120, left: 24, right: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    Strings.settings,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(color: context.colors.defaultText),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Text(
                    Strings.settignsDEscription,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: context.colors.defaultText),
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      _buildChip(
                          'App Theme',
                          state.themeMode == ThemeMode.dark
                              ? AppTheme.darkColors.primary
                              : AppTheme.lightColors.primary,
                          ThemeType.normal,
                          context),
                      _buildChip(
                          'Eid Theme',
                          state.themeMode == ThemeMode.dark
                              ? EidTheme.darkColors.primary
                              : EidTheme.lightColors.primary,
                          ThemeType.eid,
                          context),
                      _buildChip(
                          'Diwali Theme',
                          state.themeMode == ThemeMode.dark
                              ? DiwaliTheme.darkColors.primary
                              : DiwaliTheme.lightColors.primary,
                          ThemeType.diwali,
                          context),
                      _buildChip(
                          'Christmas Theme',
                          state.themeMode == ThemeMode.dark
                              ? ChristmasTheme.darkColors.primary
                              : ChristmasTheme.lightColors.primary,
                          ThemeType.christmas,
                          context),
                    ],
                  ),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: context.colors.primary,
            foregroundColor: context.colors.onPrimary,
            onPressed: () => context.read<ThemeCubit>().changeThemeMode(
                state.themeMode == ThemeMode.light
                    ? ThemeMode.dark
                    : ThemeMode.light),
            tooltip: Strings.changeMode,
            child: state.themeMode == ThemeMode.light
                ? const Icon(Icons.dark_mode_outlined)
                : const Icon(Icons.light_mode_outlined),
          ),
        );
      },
    );
  }

  Widget _buildChip(
      String label, Color color, ThemeType themeType, BuildContext context) {
    final bool isSelected =
        context.read<ThemeCubit>().state.selectedThemeType == themeType;

    return ChoiceChip(
      labelPadding: const EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: context.colors.onSurface,
        child: Text(
          label[0].toUpperCase(),
          style: context.textTheme.titleSmall?.copyWith(
              color: context.colors.surface, fontWeight: FontWeight.w500),
        ),
      ),
      label: isSelected
          ? Text(
              label,
              style: context.textTheme.bodyLarge
                  ?.copyWith(color: context.colors.surface),
            )
          : Text(
              label,
              style: context.textTheme.bodyLarge
                  ?.copyWith(color: context.colors.onSurface),
            ),
      backgroundColor:
          isSelected ? context.colors.surface : context.colors.disabledSurface,
      elevation: 6.0,
      shadowColor: context.colors.disabledIcon,
      selectedShadowColor: context.colors.surfaceVariant,
      selectedColor: color,
      padding: const EdgeInsets.all(8.0),
      selected: isSelected,
      onSelected: (bool isSelected) {
        switch (themeType) {
          case ThemeType.normal:
            if (isSelected) {
              context.read<ThemeCubit>().changeThemeType(themeType);
            }

            break;

          case ThemeType.eid:
            if (isSelected) {
              context.read<ThemeCubit>().changeThemeType(themeType);
            } else {
              context.read<ThemeCubit>().changeThemeType(ThemeType.normal);
            }

            break;

          case ThemeType.diwali:
            if (isSelected) {
              context.read<ThemeCubit>().changeThemeType(themeType);
            } else {
              context.read<ThemeCubit>().changeThemeType(ThemeType.normal);
            }

            break;

          case ThemeType.christmas:
            if (isSelected) {
              context.read<ThemeCubit>().changeThemeType(themeType);
            } else {
              context.read<ThemeCubit>().changeThemeType(ThemeType.normal);
            }

            break;
        }
      },
    );
  }
}
