import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_theme_etension/home/welcome/welcome_screen.dart';
import 'package:flutter_theme_etension/theme/cubit/theme_cubit.dart';
import 'package:flutter_theme_etension/utils/strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  runApp(
    BlocProvider(
      create: (context) => ThemeCubit(sharedPreferences)..init(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          title: Strings.appName,
          themeMode: state.themeMode,
          theme: state.lightTheme,
          darkTheme: state.darkTheme,
          home: const WelcomeScreen(),
        );
      },
    );
  }
}
